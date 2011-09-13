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
                                {t}Shop Management{/t} - {t}Import product feed{/t}
                            </h2>
                        </header>
                        <section class="container_8 clearfix">
                        	<div class="grid_8 clearfix">
                        		<section>
                        			<a class="button small red" href="/Manage/">{t}Back to Dashboard{/t}</a>
                        			<form action="" method="POST" enctype="multipart/form-data">
                        				<div class="formrow">
                        					<label for="feed">Feed</label>
                        					<input type="file" id="feed" name="feed"/>
                        				</div>
                        				<div class="formrow">
                        					<input type="submit" value="Import"/>
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