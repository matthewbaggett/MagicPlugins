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
                                Statistics
                            </h2>
                        </header>
                        <section class="container_6 clearfix">
                                <div class="grid_4 clearfix">
                                    <header class="clearfix">
                                    <ul class="fr action-buttons">
                                        <li><a href="#" class="current button button-gray no-text" title="Today's Stats"><span class="calendar-view-day"></span></a></li>
                                        <li><a href="#" class="button button-gray no-text" title="This Week's Stats"><span class="calendar-view-week"></span></a></li>
                                        <li><a href="#" class="button button-gray no-text" title="This Month's Stats"><span class="calendar-view-month"></span></a></li>
                                    </ul>
                                    <h3>Today's Stats</h3>
                                    </header>
                                    <section>
                                    <div class="grid_1 alpha">
                                        <div class="widget black ac">
                                            <header><h2>Orders</h2></header>
                                            <section><h1>20</h1></section>
                                        </div>
                                    </div>
                                    <div class="grid_1">
                                        <div class="widget black ac">
                                            <header><h2>Paid Invoices</h2></header>
                                            <section><h1>10</h1></section>
                                        </div>
                                    </div>
                                    <div class="grid_1">
                                        <div class="widget black ac">
                                            <header><h2>Affiliate Signups</h2></header>
                                            <section><h1>30</h1></section>
                                        </div>
                                    </div>
                                    <div class="grid_1 omega">
                                        <div class="widget black ac">
                                            <header><h2>Affiliate Orders</h2></header>
                                            <section><h1>50</h1></section>
                                        </div>
                                    </div>
                                    <div class="grid_1 alpha">
                                        <div class="widget black ac">
                                            <header><h2>Tickets</h2></header>
                                            <section><h1>20</h1></section>
                                        </div>
                                    </div>
                                    <div class="grid_1">
                                        <div class="widget black ac">
                                            <header><h2>Offline Chats</h2></header>
                                            <section><h1>10</h1></section>
                                        </div>
                                    </div>
                                    <div class="grid_1">
                                        <div class="widget black ac">
                                            <header><h2>Alerts</h2></header>
                                            <section><h1>20</h1></section>
                                        </div>
                                    </div>
                                    <div class="grid_1 omega">
                                        <div class="widget black ac">
                                            <header><h2>Errors</h2></header>
                                            <section><h1>20</h1></section>
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

                    <!-- Analytics Section -->
                    <div class="main-content">
                        <header>
                            <ul class="action-buttons clearfix fr">
                                <li><a href="#" class="button button-gray no-text"><span class="wrench"></span></a></li>
                                <li><a href="documentation/index.html" class="button button-gray no-text help" rel="#overlay"><span class="help"></span></a></li>
                            </ul>
                            <h2>
                                Analytics
                            </h2>
                        </header>
                        <section class="sortable container_6 clearfix">
                                <div class="grid_6">
                                    <div class="message notice">You can drag the widget headers to rearrange the widgets. Click on the graph to view its details.</div>
                                </div>
                                <div class="grid_2 widget-container" id="sortable-1" draggable="true">
                                    <h2 class="report-icon">Reporting Bar Graph</h2>
                                    <div class="widget has-details">
                                        <header>
                                            <ul class="fr action-buttons small">
                                                <li><a href="#" class="widget-close"><span class="close"></span></a></li>
                                            </ul>
                                            <h2><a rel="#report-details">As of January, 2011</a></h2>
                                        </header>
                                        <section>
                                            <div id="reporting-bar" class="report-preview"></div>
                                        </section>
                                    </div>
                                </div>
                                <div class="grid_2 widget-container" id="sortable-2" draggable="true">
                                    <h2 class="report-icon">Reporting Filled Graph</h2>
                                    <div class="widget has-details">
                                        <header>
                                            <ul class="fr action-buttons small">
                                                <li><a href="#" class="widget-close"><span class="close"></span></a></li>
                                            </ul>
                                            <h2><a rel="#report-details">As of January, 2011</a></h2>
                                        </header>
                                        <section>
                                            <div id="reporting-filled" class="report-preview"></div>
                                        </section>
                                    </div>
                                </div>
                                <div class="grid_2 widget-container" id="sortable-3" draggable="true">
                                    <h2 class="report-icon">Reporting Line Graph</h2>
                                    <div class="widget has-details">
                                        <header>
                                            <ul class="fr action-buttons small">
                                                <li><a href="#" class="widget-close"><span class="close"></span></a></li>
                                            </ul>
                                            <h2><a rel="#report-details">As of January, 2011</a></h2>
                                        </header>
                                        <section>
                                            <div id="reporting-line" class="report-preview"></div>
                                        </section>
                                    </div>
                                </div>
                                <div class="grid_2 widget-container" id="sortable-4" draggable="true">
                                    <h2 class="report-icon">Report Points Graph</h2>
                                    <div class="widget has-details">
                                        <header>
                                            <ul class="fr action-buttons small">
                                                <li><a href="#" class="widget-close"><span class="close"></span></a></li>
                                            </ul>
                                            <h2><a rel="#report-details">As of January, 2011</a></h2>
                                        </header>
                                        <section>
                                            <div id="reporting-points" class="report-preview"></div>
                                        </section>
                                    </div>
                                </div>
                                <div class="grid_2 widget-container" id="sortable-5" draggable="true">
                                    <h2 class="report-icon">Report Bar Graph</h2>
                                    <div class="widget has-details">
                                        <header>
                                            <ul class="fr action-buttons small">
                                                <li><a href="#" class="widget-close"><span class="close"></span></a></li>
                                            </ul>
                                            <h2><a rel="#report-details">As of January, 2011</a></h2>
                                        </header>
                                        <section>
                                            <div id="reporting-bar2" class="report-preview"></div>
                                        </section>
                                    </div>
                                </div>
                                <div class="grid_2 widget-container" id="sortable-6" draggable="true">
                                    <h2 class="report-icon">Report Line Graph</h2>
                                    <div class="widget has-details">
                                        <header>
                                            <ul class="fr action-buttons small">
                                                <li><a href="#" class="widget-close"><span class="close"></span></a></li>
                                            </ul>
                                            <h2><a rel="#report-details">As of January, 2011</a></h2>
                                        </header>
                                        <section>
                                            <div id="reporting-line2" class="report-preview"></div>
                                        </section>
                                    </div>
                                </div>
                        </section>
                    </div>
                    <!-- End Analytics Section -->

                </section>

                <!-- Main Section End -->

            </div>
        </section>
    </div>
    
    <footer>
        <div id="footer-inner" class="container_8 clearfix">
            <div class="grid_8">
                <span class="fr"><a href="#">Documentation</a> | <a href="#">Feedback</a></span>Last account activity from 127.0.0.1 - <a href="#">Details</a> | &copy; 2010. All rights reserved. Theme design by VivantDesigns
            </div>
        </div>
    </footer>
{include file="elements.end.tpl"}