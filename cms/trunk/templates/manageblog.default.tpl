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
                                {t}Objects{/t}
                            </h2>
                        </header>
                        <section class="container_8 clearfix">
                        	<div class="grid_8 clearfix">
                        		<section>
                        			<a class="button small red" href="/Manage/">{t}Back to Dashboard{/t}</a>
                        			<table class="datatable">
                        				<tr>
                        					<th>{t}Object{/t}</th>
                        					<th>{t}Instances{/t}</th>
                        					<th>{t}Changes{/t}</th>
                        					<th>{t}Changes / Instance{/t}</th>
                        					<th>{t}Edit Data{/t}</th>
                        					<th>{t}Edit Schema{/t}</th>
                        				</tr>
                        				{foreach from=$page->objects item=object}
                        					<tr>
                        						<td>{$object['name']}</td>
                        						<td>{$object['instances']} {$object['instances_abv']}</td>
                        						<td>{$object['changes']}</td>
                        						<td>{$object['changes_avg']}</td>
                        						<td><a href="/Manage/ViewData/{$object['name']}">{t}Data{/t}</a></td>
                        						<td><a href="/Manage/ViewSchema/{$object['name']}">{t}Schema{/t}</a></td>
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