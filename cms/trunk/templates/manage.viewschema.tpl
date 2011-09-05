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
                                Objects - Schema - {$page->object_name}
                            </h2>
                        </header>
                        <section class="container_8 clearfix">
                        	<div class="grid_8 clearfix">
                        		<section>
                        			<a class="button small red" href="/Manage/Objects/list">Back to Objects</a>
                        			<a class="button small red" href="/Manage/ViewData/{$page->object_name}">View Data for {$page->object_name}</a>
                        			<table class="datatable">
                        				<tr>
                        					<th>Column</th>
                        					<th>Type</th>
                        					<th>Length</th>
                        					<th>Range</th>
                        				</tr>
                        				{foreach from=$page->object_schema key=name item=column}
                        					<tr>
                        						<td class="name">{$name}</td>
                        						<td class="type">{$column['type']}</td>
                        						<td class="length">
                        							{if isset($column['length'])}{$column['length']}{/if}
                        							{if isset($column['min-length'])}(min: {$column['min-length']}){/if}
                        							{if isset($column['max-length'])}(max: {$column['max-length']}){/if}
                        						</td>
                        						<td class="range">
                        							{if $column['type'] == 'enum'}
                        								<ul class="enum">
                        									{foreach from=$column['enum'] item=value}
                        										<li>{$value}</li>
                        									{/foreach}
                        								</ul>
                        							{elseif $column['type'] == 'timestamp'}
                        								{$page->object_columns[$name]['range']}
                        							{/if}
                        						</td>
                        					</tr>
                        				{/foreach}
                        			</table>
                        			
                                </section>
                        	</div>
                        </section>
                    </div>
                    <!-- End Statistics Section -->
                </section>

                <!-- Main Section End -->

            </div>
        </section>
    </div>
    
    <footer>
        <div id="footer-inner" class="container_8 clearfix">
            <div class="grid_8">
                <span class="fr"><a href="#">Documentation</a> | <a href="#">Feedback</a></span>Last account activity from 127.0.0.1 - <a href="#">Details</a> | &copy; 2010. All rights reserved. Theme design by VivantDesigns
            </div>
        </div>
    </footer>
{include file="elements.end.tpl"}