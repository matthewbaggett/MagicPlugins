<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>NeueAdmin II - Marketing Dashboard</title>

<link rel="stylesheet" media="screen" href="css/reset.css" />
<link rel="stylesheet" media="screen" href="css/grid.css" />
<link rel="stylesheet" media="screen" href="css/style.css" />
<link rel="stylesheet" media="screen" href="css/messages.css" />
<link rel="stylesheet" media="screen" href="css/forms.css" />
<link rel="stylesheet" media="screen" href="css/tables.css" />

<!-- color picker -->
<link rel="stylesheet" media="screen" href="lib/farbtastic/farbtastic.css" />

<!--[if lt IE 8]>
<link rel="stylesheet" media="screen" href="css/ie.css" />
<![endif]-->

<!--[if lt IE 9]>
<script type="text/javascript" src="js/html5.js"></script>
<script type="text/javascript" src="js/PIE.js"></script>
<script type="text/javascript" src="js/IE9.js"></script>
<script type="text/javascript" src="js/excanvas.js"></script>
<![endif]-->

<!-- jquerytools -->
<script type="text/javascript" src="js/jquery.tools.min.js"></script>
<script type="text/javascript" src="js/jquery.cookie.js"></script>
<script type="text/javascript" src="js/jquery.ui.min.js"></script>
<script type="text/javascript" src="js/jquery.tables.js"></script>
<script type="text/javascript" src="js/jquery.flot.js"></script>

<!-- color picker -->
<script type="text/javascript" src="lib/farbtastic/farbtastic.js"></script>

<script type="text/javascript" src="js/global.js"></script>

<!-- THIS SHOULD COME LAST -->
<!--[if lt IE 9]>
<script type="text/javascript" src="js/ie.js"></script>
<![endif]-->

<script type="text/javascript">
  $(document).ready(function() {
    $('#colorpicker').farbtastic(function(color){
        $('body').css('background-color', color);
        $('#newbgcolor').html(color);
    });
  });
</script>

</head>
<body>
    <div id="wrapper">
        <header>
            <div class="clearfix">
                <div class="shortcuts">
                    <ul class="clearfix">
                        <li><a href="#" title="Monitor Activities"><img src="images/woofunction-icons/activity_monitor.png" /><span>Activity</span></a></li>
                        <li><a href="#" title="Add/Edit Contacts"><img src="images/woofunction-icons/address_book_32.png" /><span>Contacts</span><em>300</em></a></li>
                        <li><a href="#" title="View Recent Comments"><img src="images/woofunction-icons/comment_32.png" /><span>Comments</span></a><em>20</em></li>
                        <li><a href="#" title="View Recent Orders"><img src="images/woofunction-icons/basket_32.png" /><span>Orders</span><em>20</em></a></li>
                        <li><a href="#" title="Read Mail"><img src="images/woofunction-icons/email_32.png" /><span>Mail</span><em>4</em></a></li>
                        <li><a href="#" title="Send Newsletters"><img src="images/woofunction-icons/newspaper_32.png" /><span>Newsletters</span></a></li>
                        <li><a href="#" title="View Alerts"><img src="images/woofunction-icons/error_button.png" /><span>Alerts</span><em>20</em></a></li>
                        <li><a href="#" title="View Reports"><img src="images/woofunction-icons/chart_32.png" /><span>Reports</span></a></li>
                        <li><a href="#" title="Advanced Search"><img src="images/woofunction-icons/search_button_32.png" /><span>Search</span></a></li>
                        <li><a href="#" title="Add/Edit Users"><img src="images/woofunction-icons/user_32.png" /><span>Users</span><em>5</em></a></li>
                    </ul>
                </div>

                <div class="clear"></div>

                <a class="chevron fr">Expand/Collapse</a>
                <nav>
                    <ul class="clearfix">
                        <li><a href="dashboard.html">Dashboard</a></li>
                        <li><a href="forms.html">Forms &amp; Tables</a></li>
                        <li class="active"><a href="styles.html">Styles</a></li>
                        <li><a href="#" class="arrow-down">Dropdown</a>
                            <ul>
                                <li><a href="#">Submenu 1</a></li>
                                <li><a href="#">Submenu 2</a></li>
                                <li><a href="#">Submenu 3</a></li>
                                <li><a href="#">Submenu 4</a></li>
                            </ul>
                        </li>
                        <li class="fr action">
                            <a href="documentation/index.html" class="button button-orange help" rel="#overlay"><span class="help"></span>Help</a>
                        </li>
                        <li class="fr action">
                            <a href="#" class="has-popupballoon button button-blue"><span class="add"></span>New Contact</a>
                            <div class="popupballoon bottom">
                                <h3>Add new contact</h3>
                                First Name<br />
                                <input type="text" /><br />
                                Last Name<br />
                                <input type="text" /><br />
                                Company<br />
                                <input type="text" />
                                <hr />
                                <button class="button button-orange">Add contact</button>
                                <button class="button button-gray close">Cancel</button>
                            </div>
                        </li>
                        <li class="fr action">
                            <a href="#" class="has-popupballoon button button-blue"><span class="add"></span>New Task</a>
                            <div class="popupballoon bottom">
                                <h3>Add new task</h3>
                                <input type="text" /><br /><br />
                                When it's due?<br />
                                <input type="date" /><br />
                                What category?<br />
                                <select><option>None</option></select>
                                <hr />
                                <button class="button button-orange">Add task</button>
                                <button class="button button-gray close">Cancel</button>
                            </div>
                        </li>
                        <li class="fr"><a href="#" class="arrow-down">administrator</a>
                            <ul>
                                <li><a href="#">Account</a></li>
                                <li><a href="#">Users</a></li>
                                <li><a href="#">Groups</a></li>
                                <li><a href="#">Sign out</a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>
            </div>
        </header>
        
        <section>
            <div class="container_8 clearfix">                

                <!-- Main Section -->

                <section class="main-section grid_8">
                    <!-- Styles Section -->
                    <div class="main-content">
                        <header>
                            <ul class="action-buttons clearfix fr">
                                <li>
                                    <a href="#" class="button button-red" onclick="$('#colorpickerform').toggle();"><span class="color-swatch"></span>Change Background</a>
                                    <div id="colorpickerform" style="display: none; padding: 5px; position: absolute; background: #fff; border: 1px solid #ccc;">
                                        <div id="colorpicker"></div>
                                        <div id="newbgcolor" class="ac"></div>
                                    </div>
                                </li>
                            </ul>
                            <h2>Styles</h2>
                        </header>
                        <section class="container_6 clearfix">
                            <div class="grid_6">
                                <h3>Tooltips</h3>
                                <div id="tooltip-demo">
                                    <img src="images/autumn/scottwills_autumn4_t.jpg" title="A must have tool for designing better layouts and more intuitive user-interfaces."/>
                                    <img src="images/autumn/scottwills_autumn5_t.jpg" title="Tooltips can be positioned anywhere relative to the trigger element."/>
                                    <img src="images/autumn/scottwills_autumn6_t.jpg" title="Tooltips can contain any HTML such as links, images, forms, tables, etc."/>
                                    <img src="images/autumn/scottwills_autumn2_t.jpg" title="There are many built-in show/hide effects and you can also make your own."/>
                                    <img src="images/autumn/scottwills_autumnleaf_t.jpg" title="A must have tool for designing better layouts and more intuitive user-interfaces."/>
                                    <img src="images/autumn/scottwills_butterfly_t.jpg" title="Tooltips can be positioned anywhere relative to the trigger element."/>
                                    <img src="images/autumn/scottwills_farmhouse2_t.jpg" title="Tooltips can contain any HTML such as links, images, forms, tables, etc."/>
                                </div>

                                <h3 class="leading">Buttons</h3>
                                <button class="button button-gray">Gray Button</button>
                                <button class="button button-orange">Orange Button</button>
                                <button class="button button-red">Red Button</button>
                                <button class="button button-blue">Blue Button</button>
                                <button class="button button-green">Green Button</button>

                                <h3 class="leading">Action Buttons</h3>
                                <button class="button button-gray"><span class="add"></span>Add</button>
                                <button class="button button-gray"><span class="pencil"></span>Edit</button>
                                <button class="button button-gray"><span class="disk"></span>Save</button>
                                <button class="button button-gray"><span class="bin"></span>Delete</button>
                                <button class="button button-gray"><span class="accept"></span>OK</button>
                                <button class="button button-gray"><span class="calendar"></span>Calendar</button>
                                <button class="button button-gray"><span class="help"></span>Help</button>
                                <button class="button button-gray"><span class="view-list"></span>List View</button>
                                <button class="button button-gray"><span class="view-grid"></span>Grid View</button>
                                <br />
                                <br />
                                <ul class="action-buttons clearfix">
                                    <li><a href="#" class="button button-gray no-text" title="Add"><span class="add"></span></a></li>
                                    <li><a href="#" class="button button-gray no-text" title="Edit"><span class="pencil"></span></a></li>
                                    <li><a href="#" class="button button-gray no-text" title="Save"><span class="disk"></span></a></li>
                                    <li><a href="#" class="button button-gray no-text" title="Delete"><span class="bin"></span></a></li>
                                    <li><a href="#" class="button button-gray no-text" title="OK"><span class="accept"></span></a></li>
                                    <li><a href="#" class="button button-gray no-text" title="Calendar"><span class="calendar"></span></a></li>
                                    <li><a href="#" class="button button-gray no-text" title="Help"><span class="help"></span></a></li>
                                    <li><a href="#" class="button button-gray no-text" title="List View"><span class="view-list"></span></a></li>
                                    <li><a href="#" class="button button-gray no-text" title="Grid View"><span class="view-grid"></span></a></li>
                                </ul>

                                <h3 class="leading">Pagination</h3>

                                <ul class="pagination clearfix">
                                    <li class="first"><a class="button-gray" href="#">First</a></li>
                                    <li class="prev"><a class="button-gray" href="#">&laquo;</a></li>
                                    <li class="page"><a class="button-gray" href="#">1</a></li>
                                    <li class="page"><a class="button-gray" href="#">2</a></li>
                                    <li class="page"><a class="button-gray" href="#">3</a></li>
                                    <li class="page"><a class="button-gray" href="#">4</a></li>
                                    <li class="page"><a class="button-gray" href="#">5</a></li>
                                    <li class="next"><a class="button-gray" href="#">&raquo;</a></li>
                                    <li class="last"><a class="button-gray" href="#">Last</a></li>
                                </ul>
                                <ul class="pagination clearfix">
                                    <li class="first"><a class="button-orange" href="#">First</a></li>
                                    <li class="prev"><a class="button-orange" href="#">&laquo;</a></li>
                                    <li class="page"><a class="button-orange" href="#">1</a></li>
                                    <li class="page"><a class="button-orange" href="#">2</a></li>
                                    <li class="page"><a class="button-orange" href="#">3</a></li>
                                    <li class="page"><a class="button-orange" href="#">4</a></li>
                                    <li class="page"><a class="button-orange" href="#">5</a></li>
                                    <li class="next"><a class="button-orange" href="#">&raquo;</a></li>
                                    <li class="last"><a class="button-orange" href="#">Last</a></li>
                                </ul>
                                <ul class="pagination clearfix">
                                    <li class="first"><a class="button-red" href="#">First</a></li>
                                    <li class="prev"><a class="button-red" href="#">&laquo;</a></li>
                                    <li class="page"><a class="button-red" href="#">1</a></li>
                                    <li class="page"><a class="button-red" href="#">2</a></li>
                                    <li class="page"><a class="button-red" href="#">3</a></li>
                                    <li class="page"><a class="button-red" href="#">4</a></li>
                                    <li class="page"><a class="button-red" href="#">5</a></li>
                                    <li class="next"><a class="button-red" href="#">&raquo;</a></li>
                                    <li class="last"><a class="button-red" href="#">Last</a></li>
                                </ul>
                                <ul class="pagination clearfix">
                                    <li class="first"><a class="button-blue" href="#">First</a></li>
                                    <li class="prev"><a class="button-blue" href="#">&laquo;</a></li>
                                    <li class="page"><a class="button-blue" href="#">1</a></li>
                                    <li class="page"><a class="button-blue" href="#">2</a></li>
                                    <li class="page"><a class="button-blue" href="#">3</a></li>
                                    <li class="page"><a class="button-blue" href="#">4</a></li>
                                    <li class="page"><a class="button-blue" href="#">5</a></li>
                                    <li class="next"><a class="button-blue" href="#">&raquo;</a></li>
                                    <li class="last"><a class="button-blue" href="#">Last</a></li>
                                </ul>
                                <ul class="pagination clearfix">
                                    <li class="first"><a class="button-green" href="#">First</a></li>
                                    <li class="prev"><a class="button-green" href="#">&laquo;</a></li>
                                    <li class="page"><a class="button-green" href="#">1</a></li>
                                    <li class="page"><a class="button-green" href="#">2</a></li>
                                    <li class="page"><a class="button-green" href="#">3</a></li>
                                    <li class="page"><a class="button-green" href="#">4</a></li>
                                    <li class="page"><a class="button-green" href="#">5</a></li>
                                    <li class="next"><a class="button-green" href="#">&raquo;</a></li>
                                    <li class="last"><a class="button-green" href="#">Last</a></li>
                                </ul>

                                <h3 class="leading">Progress Bars</h3>

                                <div class="progress progress-orange"><span style="width: 10%"><b>10%</b></span></div>
                                <div class="progress progress-red"><span style="width: 20%"><b>20%</b></span></div>
                                <div class="progress progress-blue"><span style="width: 30%"><b>30%</b></span></div>
                                <div class="progress progress-green"><span style="width: 40%"><b>40%</b></span></div>

                                <h3 class="leading">Notifications</h3>

                                <div class="message info closeable">
                                    <h3>Information</h3>
                                    <p>
                                        This is a closeable info message.
                                    </p>
                                </div>
                                <div class="message success closeable">
                                    <h3>Success!</h3>
                                    <p>
                                        This is a closeable success message.
                                    </p>
                                </div>
                                <div class="message warning closeable">
                                    <h3>Warning!</h3>
                                    <p>
                                        This is a closeable warning message.
                                    </p>
                                </div>
                                <div class="message error closeable">
                                    <h3>Error!</h3>
                                    <p>
                                        This is a closeable error message.
                                    </p>
                                </div>

                                <h3 class="leading">Text Styles</h3>

                                <h1>Heading 1</h1>
                                <h2>Heading 2</h2>
                                <h3>Heading 3</h3>
                                <h4>Heading 4</h4>
                                <h5>Heading 5</h5>
                                <h6>Heading 6</h6>
                                <hr />
                            </div>

                            <div class="clear"></div>

                            <div class="grid_2">
                                <dl>
                                    <dt class="code">&lt;a&gt;</dt>
                                    <dd><a href="#" title="Lorem ipsum dolor sit amet">Lorem ipsum dolor sit amet</a></dd>
                                    <dt class="code">&lt;abbr&gt;</dt>
                                    <dd><abbr title="Lorem ipsum dolor sit amet">Lorem ipsum dolor sit amet</abbr></dd>
                                    <dt class="code">&lt;code&gt;</dt>
                                    <dd><code>Lorem ipsum dolor sit amet</code></dd>
                                </dl>
                            </div>
                            <div class="grid_2">
                                <dl>
                                    <dt class="code">&lt;em&gt;</dt>
                                    <dd><em>Lorem ipsum dolor sit amet</em></dd>
                                    <dt class="code">&lt;del&gt;</dt>
                                    <dd><del>Lorem ipsum dolor sit amet</del></dd>
                                    <dt class="code">&lt;mark&gt;</dt>
                                    <dd><mark>Lorem ipsum dolor sit amet</mark></dd>
                                </dl>
                            </div>
                            <div class="grid_2">
                                <dl>
                                    <dt class="code">&lt;small&gt;</dt>
                                    <dd><small>Lorem ipsum dolor sit amet</small></dd>
                                    <dt class="code">&lt;strong&gt;</dt>
                                    <dd><strong>Lorem ipsum dolor sit amet</strong></dd>
                                </dl>
                            </div>

                            <div class="clear"></div>

                            <div class="grid_6">
                                <hr />
                            </div>

                            <div class="clear"></div>

                            <div class="grid_2">
                                <div class="code">&lt;dl&gt;&lt;dt&gt;&lt;dd&gt;</div>
                                <dl>
                                    <dt>Lorem ipsum</dt>
                                    <dd>Lorem ipsum dolor sit amet.</dd>
                                    <dt>Lorem ipsum</dt>
                                    <dd>Lorem ipsum dolor sit amet.</dd>
                                    <dt>Lorem ipsum</dt>
                                    <dd>Lorem ipsum dolor sit amet.</dd>
                                </dl>
                            </div>
                            <div class="grid_2">
                                <div class="code">&lt;ol&gt;&lt;li&gt;</div>
                                <ol class="nostyle">
                                    <li>Lorem ipsum dolor sit amet</li>
                                    <li>Lorem ipsum dolor sit amet
                                        <ol>
                                            <li>Lorem ipsum dolor sit amet</li>
                                            <li>Lorem ipsum dolor sit amet
                                                <ol>
                                                    <li>Lorem ipsum dolor sit amet</li>
                                                    <li>Lorem ipsum dolor sit amet</li>
                                                </ol>
                                            </li>
                                        </ol>
                                    </li>
                                </ol>
                            </div>
                            <div class="grid_2">
                                <div class="code">&lt;ul&gt;&lt;li&gt;</div>
                                <ul class="nostyle">
                                    <li>Lorem ipsum dolor sit amet</li>
                                    <li>Lorem ipsum dolor sit amet
                                        <ul>
                                            <li>Lorem ipsum dolor sit amet</li>
                                            <li>Lorem ipsum dolor sit amet
                                                <ul>
                                                    <li>Lorem ipsum dolor sit amet</li>
                                                    <li>Lorem ipsum dolor sit amet</li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </section>
                    </div>
                    <!-- End Styles Section -->

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

</body>
</html>
