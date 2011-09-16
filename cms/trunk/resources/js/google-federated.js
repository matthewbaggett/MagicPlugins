$(function() {
  window.google.identitytoolkit.setConfig({
	  
    developerKey: page.settings.google_translate_key,
    companyName: page.site.name,
    callbackUrl: page.site.sys_root + "/Google/FederatedLogin",
    realm: "",
    userStatusUrl: "/Google/StatusURL",
    loginUrl: "/Manage/Login",
    signupUrl: "/Manage/Register",
    homeUrl: "/",
    logoutUrl: "/Manage/Logout",
    language: "en",
    idps: ["Gmail", "GoogleApps", "Yahoo", "AOL"],
    tryFederatedFirst: true,
    useCachedUserStatus: false
  });
  $("#google_federated").accountChooser();
});