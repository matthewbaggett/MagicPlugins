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
                            <ul class="action-buttons clearfix fr">
                                <li><a href="#" class="button button-gray no-text"><span class="wrench"></span></a></li>
                                <li><a href="documentation/index.html" class="button button-gray no-text help" rel="#overlay"><span class="help"></span></a></li>
                            </ul>
                            <h2>
                                {t}Statistics{/t}
                            </h2>
                        </header>
                        <section class="container_6 clearfix">
                                <div class="stats grid_4 clearfix">
                                    <header class="clearfix">
	                                    <ul class="fr action-buttons">
	                                        <li><a href="#" class="today button button-gray no-text" title="Today's Stats"><span class="calendar-view-day"></span></a></li>
	                                        <li><a href="#" class="week button button-gray no-text" title="This Week's Stats"><span class="calendar-view-week"></span></a></li>
	                                        <li><a href="#" class="month button button-gray no-text" title="This Month's Stats"><span class="calendar-view-month"></span></a></li>
	                                    </ul>
	                                    <h3>{t}Today's Stats{/t}</h3>
                                    </header>
                                    <section class="stats today">
	                                    <div class="grid_1 alpha">
	                                        <div class="widget black ac">
	                                            <header><h2>{t}Views{/t}</h2></header>
	                                            <section><h1>{$page->stats['views']['today']}</h1></section>
	                                        </div>
	                                    </div>
	                                    <div class="grid_1">
	                                        <div class="widget black ac">
	                                            <header><h2>{t}Visitors{/t}</h2></header>
	                                            <section><h1>{$page->stats['visitors']['today']}</h1></section>
	                                        </div>
	                                    </div>
                                    </section>
                                    <section class="stats week">
	                                    <div class="grid_1 alpha">
	                                        <div class="widget black ac">
	                                            <header><h2>{t}Views{/t}</h2></header>
	                                            <section><h1>{$page->stats['views']['week']}</h1></section>
	                                        </div>
	                                    </div>
	                                    <div class="grid_1">
	                                        <div class="widget black ac">
	                                            <header><h2>{t}Visitors{/t}</h2></header>
	                                            <section><h1>{$page->stats['visitors']['week']}</h1></section>
	                                        </div>
	                                    </div>
                                    </section>
                                    <section class="stats month">
	                                    <div class="grid_1 alpha">
	                                        <div class="widget black ac">
	                                            <header><h2>{t}Views{/t}</h2></header>
	                                            <section><h1>{$page->stats['views']['month']}</h1></section>
	                                        </div>
	                                    </div>
	                                    <div class="grid_1">
	                                        <div class="widget black ac">
	                                            <header><h2>{t}Visitors{/t}</h2></header>
	                                            <section><h1>{$page->stats['visitors']['month']}</h1></section>
	                                        </div>
	                                    </div>
                                    </section>
                                    
                                </div>

                                <!-- Progress Bars -->
                                <div class="grid_2">
                                    <h3>Goals</h3>
                                    <table class="simple full">
                                        <tr>
                                            <td style="width: 30%">Newsletters</td><td style="width: 10%" class="ar">20/100</td><td style="width: 60%"><div class="progress progress-red"><span style="width: 20%"><b>20%</b></span></div></td>
                                        </tr>
                                        <tr>
                                            <td>Leads</td><td class="ar">40/100</td><td><div class="progress progress-orange"><span style="width: 40%"><b>40%</b></span></div></td>
                                        </tr>
                                        <tr>
                                            <td>Blog Posts</td><td class="ar">60/100</td><td><div class="progress progress-blue"><span style="width: 60%"><b>60%</b></span></div></td>
                                        </tr>
                                        <tr>
                                            <td>Forum Posts</td><td class="ar">80/100</td><td><div class="progress progress-green"><span style="width: 80%"><b>80%</b></span></div></td>
                                        </tr>
                                    </table>
                                </div>
                                <!-- End Progress Bars -->
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
