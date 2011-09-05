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
                                {t}Objects{/t} - {t}Data{/t} - {$page->object_name}
                            </h2>
                        </header>
                        <section class="container_8 clearfix">
                        	<div class="grid_8 clearfix">
                        		<section>
                        			<a class="button small red" href="/Manage/Objects/list">{t}Back to Objects</a>
									<a class="button small green" href="/Manage/ViewSchema/{$page->object_name}">{t}View Schema for [{$page->object_name}]{/t}</a>
                        			<table class="datatable">
                        				<tr>
                        					{foreach from=end($page->data) key=column_id item=column_value}
                        						<th class="cell_{$i}_{$column_id} column_{$column_id}">{$column_id|t}</td>
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
                        							<a href="/Manage/EditData/{$page->object_name}?id={$object_id}">{t}Edit{/t}</a>
                        							<a href="/Manage/DeleteData/{$page->object_name}?id={$object_id}">{t}Delete{/t}</a>
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
    
    {include file="elements.footer.tpl"}
{include file="elements.end.tpl"}