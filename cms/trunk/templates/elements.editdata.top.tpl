{include file="elements.top.tpl"}
  <div id="wrapper">
     {include file="manage.navigation.tpl"}  
        <section>
            <div class="container_8 clearfix">                

                <!-- Main Section -->

                <section class="main-section grid_8">

                    <!-- Statistics Section -->
                    <div class="main-content">
                        <header>
                            <h2>
                                {t}Objects{/t} - {t}Data{/t} - {$page->object_name|translate} - {if $page->id > 0}#{$page->id}{else}{t}New{/t}{/if}
                            </h2>
                        </header>
                        <section class="container_8 clearfix">
                        	<div class="grid_8 clearfix">
                        		<section>
                        			<a class="button small red" href="/Manage/Objects/list">{t}Back to Objects{/t}</a>
                        			<a class="button small rosy" href="/Manage/ViewData/{$page->object_name}">{t}Back to list of{/t} {Inflect::pluralize($page->object_name)}</a>
									<a class="button small green" href="/Manage/ViewSchema/{$page->object_name}">{t}View Schema for{/t} {$page->object_name}</a>
                        			<form action="/Manage/EditData/{$page->object_name}?id={$page->id}" method="POST">