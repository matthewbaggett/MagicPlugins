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
                                {t}Objects{/t} - {t}Data{/t} - {$page->object_name|translate} - #{$page->id}
                            </h2>
                        </header>
                        <section class="container_8 clearfix">
                        	<div class="grid_8 clearfix">
                        		<section>
                        			<a class="button small red" href="/Manage/Objects/list">{t}Back to Objects{/t}</a>
                        			<a class="button small rosy" href="/ManageShop/Parts">{t}Back to list of{/t} {Inflect::pluralize($page->object_name)}</a>
									<a class="button small green" href="/Manage/ViewSchema/Parts">{t}View Schema for{/t} {$page->object_name}</a>
									<br />
									<a class="button small blue" href="/ManageShop/">{t}Back to store management{/t}</a>
                        			<form action="/Manage/EditData/{$page->object_name}?id={$page->id}" method="POST">
                        				<table>
                        				{foreach from=$page->columns item=column}
                        					{if $column == 'description'}
                        					<tr class="formrow type_{$column}">
                        						<td colspan="2"><label for="{$column}">{$column}</label></td>
                        					</tr>
                        					<tr class="formrow type_{$column}">
                        						<td colspan="2"><textarea id="{$column}" >{$page->object->get_named_column($column)}</textarea></td>
                        					</tr>
                        					{else}
                        					<tr class="formrow type_{$column}">
                        						<td><label for="{$column}">{$column}</label></td>
                        						<td><input id="{$column}" type="text" value="{$page->object->get_named_column($column)}"/></td>
                        					</tr>
                        					{/if}
                        				{/foreach}
                        					<tr>
                        						<td colspan="2">
                        							<input class="button small green" type="submit" value="{t nodfn=true}Save{/t}" />
                        							<input class="button small red" type="submit" value="{t nodfn=true}Cancel{/t}" />
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
    
    {include file="elements.footer.tpl"}
{include file="elements.end.tpl"}