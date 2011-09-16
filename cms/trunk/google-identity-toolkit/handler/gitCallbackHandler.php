<?php
/**
 * The federated login callback page. The IDP will redirect the user to this page after
 * authenticating the user.
 */


class gitCallbackHandler {
  const OKAY = 1;
  const RESPONSE = 0;
  const ERR = -1;
  
  private $email;
  private $purpose;
  private $url;
  private $idpResponse;

  public function __construct($email, $purpose, $url, $idpResponse) {
    $this->email = $email;
    $this->purpose = $purpose;
    $this->url = $url;
    $this->idpResponse = $idpResponse;
  }

  public function execute() {
    $apiClient = gitContext::getApiClient();
    $assertion = $apiClient->verify($this->url, $this->idpResponse);
    if (empty($assertion)) {
      header('Content-type: text/html');
      
      MagicLogger::log("gitCallbackHandler: OK");
      return gitCallbackHandler::OKAY;
    } else {
      $request = new gitCallbackRequest($this->email, $this->purpose, $assertion);
      $response = new gitCallbackResponse();
      $action = new gitCallbackAction();
      $logic = new gitCallbackLogic($action);
      $logic->run($request, $response);
      $error = $response->getError();
      if (!empty($error)) {
        gitUtil::sendError($error);
        MagicLogger::log("gitCallbackHandler: error: {$error}");
        return gitCallbackHandler::ERR;
      } else {
        header(sprintf('Content-type: %s', $response->getContentType()));
        MagicLogger::log("gitCallbackHandler: response: {$response->getOutput()}");
        echo $response->getOutput();
        return gitCallbackHandler::RESPONSE;
      }
    }
  }
}








