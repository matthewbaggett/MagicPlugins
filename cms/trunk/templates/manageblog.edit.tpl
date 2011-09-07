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
                                {t}Blog posts{/t}
                            </h2>
                        </header>
                        <section class="container_8 clearfix">
                        	<div class="grid_8 clearfix">
                        		<section>
                        			<a class="button small red" href="/Manage/">{t}Back to Dashboard{/t}</a>
                        			<a class="button small green" href="/ManageBlog/">{t}Back to Blog Management{/t}</a>
                        			<form action="" method="post">
                        				<table>
	                        				<tr>
	                        					<td><label for="title">{t}Title{/t}</label></td>
	                        					<td><input name="title" id="title"/></td>
	                        				</tr>
	                        				<tr>
	                        					<td><label for="author">{t}Author{/t}</label></td>
	                        					<td><input name="author" id="author"/></td>
	                        				</tr>
	                        				<tr>
	                        					<td><label for="content">{t}Content{/t}</label></td>
	                        					<td><textarea name="content" id="content"></textarea></td>
	                        				</tr>
	                        				<tr>
	                        					<td><label for="date_written">{t}Date written{/t}</label></td>
	                        					<td><input name="date_written" id="date_written"/></td>
	                        				</tr>
	                        				<tr>
	                        					<td><label for="date_published">{t}Date published{/t}</label></td>
	                        					<td><input name="date_published" id="date_published"/></td>
	                        				</tr>
	                        				<tr>
	                        					<td><label for="published">{t}Published{/t}</label></td>
	                        					<td><input type="radio" name="published" value="yes"/> Yes <input type="radio" name="published" value="no"/> No </td>
	                        				</tr>
	                        				<tr>
	                        					<td><label for="deleted">{t}Deleted{/t}</label></td>
	                        					<td><input type="radio" name="deleted" value="yes"/> Yes <input type="radio" name="deleted" value="no"/> No </td>
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