{$brands = BrandSearcher::Factory()->sort("id","asc")->execute()}
{$parttypes = PartTypeSearcher::Factory()->sort("id","asc")->execute()}

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
                                {t}Objects{/t} - {t}Data{/t} - {$page->object_name|translate}
                            </h2>
                        </header>
                        <section class="container_8 clearfix">
                        	<div class="grid_8 clearfix">
                        		<section>
                        			<a class="button small red" href="/Manage/Objects/list">{t}Back to Objects{/t}</a>
									<a class="button small green" href="/Manage/ViewSchema/{$page->object_name}">{t}View Schema for{/t} {$page->object_name|translate}</a>
                        			<table class="datatable">
                        				<tr>
                        					{foreach from=end($page->data) key=column_id item=column_value}
                        						<th class="cell_{$column_id} column_{$column_id}">{$column_id|translate}</td>
                        					{/foreach}
                        					<th class="cell_price column_price">Price</th>
                        					<th class="column_edit_and_delete"><!-- Edit & Delete buttons --></th>
                        				</tr>
                        				{foreach from=$page->data key=i item=row}
                        					<tr>
                        						{$object_id = $row->id}
                        						{$oObject = PartSearcher::Factory()->search_by_id($object_id)->execute_one()}
	                        					{foreach from=$row key=column_id item=column_value}
	                        						<td class="cell_{$i}_{$column_id} column_{$column_id} object_{$page->object_name} object_id_{$object_id}">
	                        						{if $column_id == 'brand'}
	                        							<a href="/Manage/EditData/Brand?id={$brands[$column_value]->get_id()}">{$brands[$column_value]->get_name()}</a>
	                        						{elseif $column_id == 'type'}
	                        							<a href="/Manage/EditData/PartType?id={$parttypes[$column_value]->get_id()}">{$parttypes[$column_value]->get_name()}</a>
	                        						{elseif $column_id == 'description'}
	                        							Edit to view...
	                        						{else}
	                        							{$column_value}
	                        						{/if}
	                        						</td>
	                        						
	                        					{/foreach}
	                        					
	                        					<td class="cell_{$i}_price column_price object_{$page->object_name} object_id_{$object_id}">&pound; {number_format($oObject->get_price(),2)}</td>
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