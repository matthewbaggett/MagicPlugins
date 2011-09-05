<!DOCTYPE html>
<html lang="en">
<head>

{include file="elements.head.tpl"}

<script> 
$(document).ready(function(){
    $.tools.validator.fn("#username_or_email", function(input, value) {
        return value!='Username / Email' ? true : {     
            en: "Please complete this mandatory field"
        };
    });
    
    $.tools.validator.fn("#password", function(input, value) {
        return value!='Password' ? true : {     
            en: "Please complete this mandatory field"
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
</head>

<body class="login">
	<div class="login-box main-content">
		<header>
			<ul class="action-buttons clearfix fr">
				<li><a href="{$page->site->sys_root}/Manage/Forgot-Password" class="button button-gray"><span class="help"></span>Forgot Password</a></li>
			</ul>
			<h2>Turbo Admin {t}Login{/t}</h2>
		</header>
		<section>
			{include file="elements.notes.tpl"}
			<form id="form" action="{$page->site->sys_root}/Manage/Login" method="post" class="clearfix">
				<p>
					<input type="text" id="username_or_email"  class="large" value="" name="username_or_email" required="required" placeholder="{t('Username / Email')}" />
					<input type="password" id="password" class="large" value="" name="password" required="required" placeholder="{t('Password')}" />
					<button class="large button button-gray fr" type="submit">{t}Login{/t}</button>
				</p>
				<p class="clearfix">
					<span class="fl">
						<input type="checkbox" id="remember" class="" value="1" name="remember"/>
						<label class="choice" for="remember">{t}Keep me logged-in for two weeks{/t}</label>
					</span>
				</p>
			</form>
		</section>
	</div>
</body>
</html>