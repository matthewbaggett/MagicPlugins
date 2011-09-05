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
                                Objects - Data - {$page->object_name}
                            </h2>
                        </header>
                        <section class="container_8 clearfix">
                        	<div class="grid_8 clearfix">
                        		<section>
                        			<a href="/Manage/Objects/list">Back to Objects</a>
									<a href="/Manage/ViewSchema/{$page->object_name}">View Schema for {$page->object_name}</a>
                        			<form>
                        				{foreach from=$page->columns item=column}
                        					<div class="formrow {$column}">
                        						<label for="{$column}">{$column}</label>
                        						<input id="{$column}" type="text" value="{$page->object->get_named_column($column)}"/>
                        					</div>
                        				{/foreach}
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