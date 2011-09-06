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
                                {t}Objects{/t} - {t}Schema{/t} - {$page->object_name|translate}
                            </h2>
                        </header>
                        <section class="container_8 clearfix">
                        	<div class="grid_8 clearfix">
                        		<section>
                        			<a class="button small red" href="/Manage/Objects/list">{t}Back to Objects{/t}</a>
                        			<a class="button small red" href="/Manage/ViewData/{$page->object_name}">{t}View Data for{/t} {$page->object_name}</a>
                        			<table class="datatable">
                        				<tr>
                        					<th>{t}Column{/t}</th>
                        					<th>{t}Type{/t}</th>
                        					<th>{t}Length{/t}</th>
                        					<th>{t}Range{/t}</th>
                        				</tr>
                        				{foreach from=$page->object_schema key=name item=column}
                        					<tr>
                        						<td class="name">{t($name)}</td>
                        						<td class="type">{t($column['type'])}</td>
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
    
    {include file="elements.footer.tpl"}
{include file="elements.end.tpl"}