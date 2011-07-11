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
				<li><a href="{$page->site->sys_root}/CMS/login" class="button button-gray">Back to Login</a></li>
			</ul>
			<h2>Forgotten your password?</h2>
		</header>
		<section>
			{include file="elements.notes.tpl"}
			<form id="form" action="{$page->site->sys_root}/CMS/forgot-password" method="post" class="clearfix">
				<p>
					<input type="text" id="username_or_email"  class="large" value="" name="username_or_email" required="required" placeholder="Username / Email" />
					<button class="large button button-gray fr" type="submit">Recover</button>
				</p>
			</form>
		</section>
	</div>
</body>
</html>