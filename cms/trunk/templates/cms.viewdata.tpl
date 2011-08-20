{include file="elements.top.tpl"}
  <div id="wrapper">
     {include file="cms.navigation.tpl"}  
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
                        			<a href="/CMS/Objects/list">Back to Objects</a>
									<a href="/CMS/ViewSchema/{$page->object_name}">View Schema for {$page->object_name}</a>
                        			<table class="datatable">
                        				<tr>
                        					{foreach from=end($page->data) key=column_id item=column_value}
                        						<th class="cell_{$i}_{$column_id} column_{$column_id}">{$column_id}</td>
                        					{/foreach}
                        				</tr>
                        				{foreach from=$page->data key=i item=row}
                        					<tr>
                        					{foreach from=$row key=column_id item=column_value}
                        						{$object_id = $row->id}
                        						<td class="cell_{$i}_{$column_id} column_{$column_id} object_{$page->object_name} object_id_{$object_id}">
                        						{if $page->object_name eq 'Mail'}
                        							{if $column_id eq 'to' || $column_id eq 'from'}
                        								<pre>{print_r(unserialize($column_value))}</pre>
                        							{elseif ($column_id == 'subject')}
                        								<pre>{$column_value}</pre>
                        							{else}
                        								{$column_value}
                        							{/if}
                        						{else}
                        							{$column_value}
                        						{/if}
                        						</td>
                        						
                        					{/foreach}
                        						<td>
                        							<a href="/CMS/EditData/{$page->object_name}?id={$object_id}">Edit</a>
                        							<a href="/CMS/DeleteData/{$page->object_name}?id={$object_id}">Delete</a>
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