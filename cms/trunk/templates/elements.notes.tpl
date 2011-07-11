{php}
	if(isset($_SESSION['notes'])){
		foreach($_SESSION['notes'] as $key => $note){
			echo '<div class="message notice">' . $note . '</div>';
		}
		unset($_SESSION['notes']);
	}
{/php}