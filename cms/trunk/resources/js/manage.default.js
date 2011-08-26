$(document).ready(function(){
	var stats = $('div.stats');
	$('header a.today', stats).click(function(){
		$('header ul.action-buttons a', stats).removeClass('current');
		$('header ul.action-buttons a.today', stats).addClass('current');
		$('section.stats', stats).hide();
		$('section.stats.today', stats).show();
		$('header h3',stats).empty().append("Today's Stats.");
	});
	$('header a.week', stats).click(function(){
		$('header ul.action-buttons a', stats).removeClass('current');
		$('header ul.action-buttons a.week', stats).addClass('current');
		$('section.stats', stats).hide();
		$('section.stats.week', stats).show();
		$('header h3',stats).empty().append("This Week's Stats.");
	});
	$('header a.month', stats).click(function(){
		$('header ul.action-buttons a', stats).removeClass('current');
		$('header ul.action-buttons a.month', stats).addClass('current');
		$('section.stats', stats).hide();
		$('section.stats.month', stats).show();
		$('header h3',stats).empty().append("This Month's Stats.");
	});
	$('section.stats', stats).hide();
	$('header a.today', stats).click();
});