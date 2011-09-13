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
                                {t}Objects{/t} - {t}Data{/t} - {$page->object_name|pluralize|translate}
                            </h2>
                        </header>
                        <section class="container_8 clearfix">
                        	<div class="grid_8 clearfix">
                        		<section>
                        			<a class="button small red" href="/Manage/Objects/list">{t}Back to Objects{/t}</a>
                        			<a class="button small green" href="/Manage/ViewSchema/Parts">{t}View Schema for Parts{/t}</a>
                        			<br />
									<a class="button small blue" href="/ManageShop/">{t}Back to store management{/t}</a>
                        			<table class="datatable">
                        				
                        				<tr>
                        					{foreach from=end($page->data) key=column_id item=column_value}
												{if $column_id != 'description'}
                        							<th class="cell_{$i}_{$column_id} column_{$column_id}">{$column_id|translate}</td>
                        						{/if}
                        					{/foreach}
                        				</tr>
                        				{foreach from=$page->data key=i item=row}
                        					<tr>
	                        					{foreach from=$row key=column_id item=column_value}
	                        						{$object_id = $row->id}
	                        						{if $column_id == 'description'}
	                        						{else if $column_id == 'brand'}
	                        							<td class="cell_{$i}_{$column_id} column_{$column_id} object_{$page->object_name} object_id_{$object_id}">{BrandSearcher::Factory()->search_by_id($column_value)->execute_one()->get_name()}</td>
													{else if $column_id == 'type'}
	                        							<td class="cell_{$i}_{$column_id} column_{$column_id} object_{$page->object_name} object_id_{$object_id}">{PartTypeSearcher::Factory()->search_by_id($column_value)->execute_one()->get_name()}</td>
	                        						{else}
		                        						<td class="cell_{$i}_{$column_id} column_{$column_id} object_{$page->object_name} object_id_{$object_id}">{$column_value}</td>
	                        						{/if}
	                        						
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