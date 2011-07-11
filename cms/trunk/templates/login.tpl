<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>NeueAdmin II - Marketing Dashboard</title>

<link rel="stylesheet" media="screen" href="css/reset.css" />
<link rel="stylesheet" media="screen" href="css/grid.css" />
<link rel="stylesheet" media="screen" href="css/style.css" />
<link rel="stylesheet" media="screen" href="css/messages.css" />
<link rel="stylesheet" media="screen" href="css/forms.css" />

<!--[if lt IE 8]>
<link rel="stylesheet" media="screen" href="css/ie.css" />
<![endif]-->

<!--[if lt IE 9]>
<script src="js/html5.js"></script>
<script src="js/PIE.js"></script>
<script src="js/IE9.js"></script>
<![endif]-->

<!-- jquerytools -->
<script type="text/javascript" src="js/jquery.tools.min.js"></script>
<script type="text/javascript" src="js/jquery.cookie.js"></script>
<script type="text/javascript" src="js/jquery.ui.min.js"></script>

<script type="text/javascript" src="js/global.js"></script>

<!-- THIS SHOULD COME LAST -->
<!--[if lt IE 9]>
<script type="text/javascript" src="js/ie.js"></script>
<![endif]-->

<script> 
$(document).ready(function(){
    $.tools.validator.fn("#username", function(input, value) {
        return value!='Username' ? true : {     
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
              <li><a href="#" class="button button-gray">Register</a></li>
              <li><a href="#" class="button button-gray"><span class="help"></span>Forgot Password</a></li>
          </ul>
          <h2>NeueAdmin II Login</h2>
      </header>
    	<section>
    		<div class="message notice">Enter any letter and press Login</div>
    		<form id="form" action="dashboard.html" method="post" class="clearfix">
			<p>
				<input type="text" id="username"  class="large" value="" name="username" required="required" placeholder="Username" />
                        <input type="password" id="password" class="large" value="" name="password" required="required" placeholder="Password" />
                        <button class="large button button-gray fr" type="submit">Login</button>
			</p>
			<p class="clearfix">
				<span class="fl">
					<input type="checkbox" id="remember" class="" value="1" name="remember"/>
					<label class="choice" for="remember">Keep me logged-in for two weeks</label>
				</span>
			</p>
		</form>
    	</section>
    </div>
</body>
</html>