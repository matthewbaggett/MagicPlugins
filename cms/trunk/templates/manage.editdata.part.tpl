{include file="elements.top.tpl"}
{$arrConnectors = ConnectorSearcher::Factory()->sort("type","ASC")->execute()}
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
                        <section class="container_7 clearfix">
                        	<div class="grid_7 clearfix">
                        		<section>
                        			<a class="button small red" href="/Manage/Objects/list">{t}Back to Objects{/t}</a>
                        			<a class="button small rosy" href="/ManageShop/Parts">{t}Back to list of{/t} {Inflect::pluralize($page->object_name)}</a>
									<a class="button small green" href="/Manage/ViewSchema/Parts">{t}View Schema for{/t} {$page->object_name}</a>
									<br />
									<a class="button small blue" href="/ManageShop/">{t}Back to store management{/t}</a>
									<h3>Properties</h3>
                        			<form class="configure properties" action="/Manage/EditData/{$page->object_name}?id={$page->id}" method="POST">
                        				<div class="column">
	                        				<table>
	                        				{foreach from=$page->columns item=column}
	                        					{if $column == 'description'}
	                        					<tr class="formrow type_{$column}">
	                        						<td colspan="2"><label for="{$column}">{$column}</label></td>
	                        					</tr>
	                        					<tr class="formrow type_{$column}">
	                        						<td colspan="2"><textarea id="{$column}" >{$page->object->get_named_column($column)}</textarea></td>
	                        					</tr>
	                        					{elseif $column == 'brand'}
	                        					<tr class="formrow type_{$column}">
	                        						<td><label for="{$column}">{$column}</label></td>
	                        						<td>
	                        							<select id="{$column}">
	                        								{foreach from=BrandSearcher::Factory()->execute() item=oBrand}
	                        									<option value="{$oBrand->get_id()}" {if $oBrand->get_id() == $page->object->get_brand()}selected="selected"{/if}>{$oBrand->get_name()}</option>
	                        								{/foreach}
	                        							</select>
	                        						</td>
	                        					</tr>
	                        					{elseif $column == 'type'}
	                        					<tr class="formrow type_{$column}">
	                        						<td><label for="{$column}">{$column}</label></td>
	                        						<td>
	                        							<select id="{$column}">
	                        								{foreach from=PartTypeSearcher::Factory()->execute() item=oPartType}
	                        									<option value="{$oPartType->get_id()}" {if $oPartType->get_id() == $page->object->get_type()}selected="selected"{/if}>{$oPartType->get_name()}</option>
	                        								{/foreach}
	                        							</select>
	                        						</td>
	                        					</tr>
	                        					{elseif $column == 'enabled' or $column == 'deleted'}
	                        					<tr class="formrow type_{$column}">
	                        						<td><label for="{$column}">{$column}</label></td>
	                        						<td>
	                        							<input type="radio" name="{$column}" value="yes" {if $page->object->get_named_column($column) == 'yes'}checked="checked"{/if}/> Yes
	                        							<input type="radio" name="{$column}" value="no"  {if $page->object->get_named_column($column) == 'no'}checked="checked"{/if}/> No
	                        						</td>
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
                        				</div>
                        				<div class="column">
                        					{foreach from=ConnectorTypeSearcher::Factory()->sort('id',"asc")->execute() item=oConnectorType}
                        						{if $oConnectorType->has_child_connectors()}	
	                        						<div class="connector_type">
	                        							<div class="heading"><span>{$oConnectorType->get_name()}</span></div>
	                        							{foreach from=ConnectorSearcher::Factory()->search_by_type($oConnectorType->get_id())->execute() item=oConnector}
	                        								<div class="formrow">
				                        						{$name = strtolower(str_replace(" ","_",$oConnector->get_name()))}
				                        						<label for="{$name}">{$oConnector->get_name()}</label>
				                        						<input id="{$name}" name="{$name}" type="text"/>
				                        					</div>
	                        							{/foreach}
	                        							<div class="clear"></div>
	                        						</div>
	                        					{/if}
                        					{/foreach}
                        					
                        					
                        				</div>
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