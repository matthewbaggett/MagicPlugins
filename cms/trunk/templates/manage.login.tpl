<!DOCTYPE html>
<html lang="en">
<head>

{include file="elements.head.tpl"}

<script> 
$(document).ready(function(){
    $.tools.validator.fn("#username_or_email", function(input, value) {
        return value!='Username / Email' ? true : {     
            en: "{t nodfn=true}Please complete this mandatory field{/t}"
        };
    });
    
    $.tools.validator.fn("#password", function(input, value) {
        return value!='Password' ? true : {     
            en: "{t nodfn=true}Please complete this mandatory field{/t}"
        };
    });

    var form = $("#form").validator({ 
    	position: 'bottom left', 
    	offset: [5, 0],
    	messageClass:'form-error',
    	message: '<div><em/></div>' // em element is the arrow
    }).attr('novalidate', 'novalidate');
});
</script>

<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jqueryui/1.8.2/jquery-ui.min.js"></script>
<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/googleapis/0.0.4/googleapis.min.js"></script>
<script type="text/javascript" src="//ajax.googleapis.com/jsapi"></script>
<script type="text/javascript">

var page = {json_encode($page)};

console.log(page);

{literal}
  google.load("identitytoolkit", "1.0", {packages: ["ac"]});
{/literal}
</script>
<script type="text/javascript" src="{$page->site->sys_root}/plugins/cms/resources/js/google-federated.js"></script></head>

<body class="login">
	<div class="login-box main-content">
		<header>
			<ul class="action-buttons clearfix fr">
				<li><a href="{$page->site->sys_root}/Manage/Forgot-Password" class="button button-gray"><span class="help"></span>{t}Forgot Password{/t}</a></li>
			</ul>
			<h2>Turbo Admin {t}Login{/t}</h2>
		</header>
		<section>
			{include file="elements.notes.tpl"}
			<form id="form" action="{$page->site->sys_root}/Manage/Login" method="post" class="clearfix">
				<p>
					<input type="text" id="username_or_email"  class="large" value="" name="username_or_email" required="required" placeholder="{t nodfn=true}Username / Email{/t}" />
					<input type="password" id="password" class="large" value="" name="password" required="required" placeholder="{t nodfn=true}Password{/t}" />
					<button class="large button button-gray fr" type="submit">{t nodfn=true}Login{/t}</button>
				</p>
				<p class="clearfix">
					<span class="fl">
						<input type="checkbox" id="remember" class="" value="1" name="remember"/>
						<label class="choice" for="remember">{t}Keep me logged-in for two weeks{/t}</label>
					</span>
				</p>
				<p>Sign in using Google <div id="google_federated"></div></p>
			</form>
		</section>
	</div>
</body>
</html>