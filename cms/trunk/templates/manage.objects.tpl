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
                                Objects
                            </h2>
                        </header>
                        <section class="container_8 clearfix">
                        	<div class="grid_8 clearfix">
                        		<section>
                        			<a href="/Manage/">Back to Dashboard</a>
                        			<table class="datatable">
                        				<tr>
                        					<th>Object</th>
                        					<th>Instances</th>
                        					<th>Changes</th>
                        					<th>Changes/Instance</th>
                        					<th>Edit Data</th>
                        					<th>Edit Schema</th>
                        				</tr>
                        				{foreach from=$page->objects item=object}
                        					<tr>
                        						<td>{$object['name']}</td>
                        						<td>{$object['instances']} {$object['instances_abv']}</td>
                        						<td>{$object['changes']}</td>
                        						<td>{$object['changes_avg']}</td>
                        						<td><a href="/Manage/ViewData/{$object['name']}">Data</a></td>
                        						<td><a href="/Manage/ViewSchema/{$object['name']}">Schema</a></td>
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