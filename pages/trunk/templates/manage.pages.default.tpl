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
                                {t}Pages{/t}
                            </h2>
                        </header>
                        <section class="container_8 clearfix">
                        	<div class="grid_8 clearfix">
                        		<section>
                        			<a class="button small red" href="/Manage/">{t}Back to Dashboard{/t}</a>
                        			<table class="datatable">
                        				<tr>
                        					<th>{t}ID{/t}</th>
                        					<th>{t}URL Path{/t}</th>
                        					<th>{t}Title{/t}</th>
                        					<th>{t}Edited date{/t}</th>
                        					<th>{t}Published?{/t}</th>
                        					<th>{t}Deleted?{/t}</th>
                        					<th>{t}Author{/t}</th>
                        					<th>{t}Edit post{/t}</th>
                        					<th>{t}Delete post{/t}</th>
                        				</tr>
                        				{foreach from=$page->arr_pages item=oPage}
                        					<tr>
                        						<td>{$oPage->get_id()}/{$oPage->get_id36()}</td>
                        						<td>{$oPage->get_path()}</td>
                        						<td>{$oPage->get_title()}</td>
                        						<td>{date("Y/m/d H:i:s", $oPage->get_timestamp())}</td>
                        						<td>{if $oPage->get_is_published()} yes {else} no {/if}</td>
                        						<td>{if $oPage->get_deleted() == 'yes'} yes {else} no {/if}</td>
                        						<td>{$oPage->get_parent_user()->get_firstname()} {$oPage->get_parent_user()->get_surname()}</td>
                        						<td><a href="/ManagePages/Edit/{$oPage->get_id36()}">{t}Edit{/t}</a></td>
                        						<td><a href="/ManagePages/Delete/{$oPage->get_id36()}">{t}Delete{/t}</a></td>
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