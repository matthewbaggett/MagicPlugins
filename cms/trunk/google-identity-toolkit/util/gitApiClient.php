<?php
/**
 * Communicates with the identity toolkit API.
 */

class gitApiClient {
  private static $VERIFY_URL = 'https://www.googleapis.com/identitytoolkit/v1/relyingparty/verifyAssertion?key=';
  private $apiKey = 'your_api_key';

  public function __construct($apiKey) {
    $this->apiKey = $apiKey;
  }

  /**
   * Sends post HTTP request to the remote url using curl module.
   *
   * @param string $postData the post body of this request.
   * @return mixed Data parsed from the HTTP response,
   *         NULL if the HTTP response code is not 200.
   */
  private function post($postData) {
    $ch = curl_init();
    curl_setopt_array($ch, array(
        CURLOPT_URL => gitApiClient::$VERIFY_URL . $this->apiKey,
        CURLOPT_RETURNTRANSFER => 1,
        CURLOPT_HTTPHEADER => array('Content-Type: application/json'),
        CURLOPT_POSTFIELDS => json_encode($postData),
        CURLOPT_SSL_VERIFYPEER => FALSE,
        CURLOPT_SSL_VERIFYHOST => FALSE));

    $response = curl_exec($ch);
    $http_code = curl_getinfo($ch, CURLINFO_HTTP_CODE);
    curl_close($ch);
    if ($http_code == '200' && !empty($response)) {
      return json_decode($response, true);
    } else {
      return NULL;
    }
  }

  /**
   * Sends request to the identity toolkit API endpoint to verify the IDP response.
   *
   * @param string $url The URL which is requested by the IDP.
   * @param string $postBody The post body which is posted by the IDP.
   * @return mixed: parsed raw user identity object from authentication server's HTTP response.
   */
  public function verify($url, $postBody) {
    $request = array();
    $request['requestUri'] = $url;
    $request['postBody'] = $postBody;

    $response = $this->post($request);
    if (!empty($response)) {
      if (empty($response['identifier'])) {
        return NULL;
      }
      $verifiedEmail = NULL;
      if (isset($response['verifiedEmail'])) {
        $verifiedEmail = $response['verifiedEmail'];
      }
      $assertion = new gitAssertion($response['identifier'], $verifiedEmail);
      if (!empty($response['firstName'])) {
        $assertion->setFirstName($response['firstName']);
      }
      if (!empty($response['lastName'])) {
        $assertion->setLastName($response['lastName']);
      }
      return $assertion;
    }
    return NULL;
  }
}

