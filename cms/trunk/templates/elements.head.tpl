<meta http-equiv="Content-Type" content="text/html; charset=UTF8">

<title>Turbo Admin</title>

<link rel="stylesheet" media="screen" href="{$page->site->sys_root}/plugins/cms/resources/css/reset.css" />
<link rel="stylesheet" media="screen" href="{$page->site->sys_root}/plugins/cms/resources/css/grid.css" />
<link rel="stylesheet" media="screen" href="{$page->site->sys_root}/plugins/cms/resources/css/style.css" />
<link rel="stylesheet" media="screen" href="{$page->site->sys_root}/plugins/cms/resources/css/messages.css" />
<link rel="stylesheet" media="screen" href="{$page->site->sys_root}/plugins/cms/resources/css/forms.css" />
<link rel="stylesheet" media="screen" href="{$page->site->sys_root}/plugins/cms/resources/css/tables.css" />
<link rel="stylesheet" media="screen" href="{$page->site->sys_root}/plugins/cms/resources/css/buttons.css" />

<!--[if lt IE 8]>
<link rel="stylesheet" media="screen" href="{$page->site->sys_root}/plugins/cms/resources/css/ie.css" />
<![endif]-->

<!--[if lt IE 9]>
<script type="text/javascript" src="{$page->site->sys_root}/plugins/cms/resources/js/html5.js"></script>
<script type="text/javascript" src="{$page->site->sys_root}/plugins/cms/resources/js/PIE.js"></script>
<script type="text/javascript" src="{$page->site->sys_root}/plugins/cms/resources/js/IE9.js"></script>
<script type="text/javascript" src="{$page->site->sys_root}/plugins/cms/resources/js/excanvas.js"></script>

<![endif]-->

<!-- jquerytools -->
<script type="text/javascript" src="{$page->site->sys_root}/plugins/cms/resources/js/jquery.tools.min.js"></script>
<script type="text/javascript" src="{$page->site->sys_root}/plugins/cms/resources/js/jquery.cookie.js"></script>
<script type="text/javascript" src="{$page->site->sys_root}/plugins/cms/resources/js/jquery.ui.min.js"></script>
<script type="text/javascript" src="{$page->site->sys_root}/plugins/cms/resources/js/jquery.tables.js"></script>
<script type="text/javascript" src="{$page->site->sys_root}/plugins/cms/resources/js/jquery.flot.js"></script>

<script type="text/javascript" src="{$page->site->sys_root}/plugins/cms/resources/js/global.js"></script>

<!-- THIS SHOULD COME LAST -->
<!--[if lt IE 9]>
<script type="text/javascript" src="{$page->site->sys_root}/plugins/cms/resources/js/ie.js"></script>
<![endif]-->

{foreach from=$page->site->scripts item=script}
	<script type="text/javascript" src="{$script}"></script>
{/foreach}