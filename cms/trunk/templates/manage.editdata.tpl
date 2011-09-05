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
                                Objects - Data - {$page->object_name} - #{$page->id}
                            </h2>
                        </header>
                        <section class="container_8 clearfix">
                        	<div class="grid_8 clearfix">
                        		<section>
                        			<a class="button small red" href="/Manage/Objects/list">Back to Objects</a>
                        			<a class="button small rosy" href="/Manage/ViewData/{$page->object_name}">Back to list of {Inflect::pluralize($page->object_name)}</a>
									<a class="button small green" href="/Manage/ViewSchema/{$page->object_name}">View Schema for {$page->object_name}</a>
                        			<form action="/Manage/EditData/{$page->object_name}?id={$page->id}" method="POST">
                        				<table>
                        				{foreach from=$page->columns item=column}
                        					<tr class="formrow {$column}">
                        						<td><label for="{$column}">{$column}</label></td>
                        						<td><input id="{$column}" type="text" value="{$page->object->get_named_column($column)}"/></td>
                        					</tr>
                        				{/foreach}
                        					<tr>
                        						<td colspan="2">
                        							<input class="button small green" type="submit" value="Save" />
                        							<input class="button small red" type="submit" value="Cancel" />
                        						</td>
                        					</tr>
                        				</table>
                        			</form>
                        			
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