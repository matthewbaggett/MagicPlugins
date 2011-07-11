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

<script type="text/javascript" src="js/global.js"></script>

<!-- THIS SHOULD COME LAST -->
<!--[if lt IE 9]>
<script type="text/javascript" src="js/ie.js"></script>
<![endif]-->

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
                        <li class="active"><a href="forms.html">Forms &amp; Tables</a></li>
                        <li><a href="styles.html">Styles</a></li>
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
                    <!-- Forms Section -->
                    <div class="main-content grid_4 alpha">
                        <header>
                            <ul class="action-buttons clearfix fr">
                                <li><a class="modalInput button button-blue" rel="#simpledialog">Simple Dialog</a></li>
                            </ul>
                            <h2>Forms</h2>
                        </header>
                        <section class="clearfix">
                            <form class="form">
                                <div class="clearfix">
                                    <label>Name <em>*</em><small>Enter your name</small></label><input type="text" name="name" required="required" />
                                </div>
                                <div class="clearfix">
                                    <label>Email <em>*</em><small>A valid email address</small></label><input type="email" required="required" />
                                </div>
                                <div class="clearfix">
                                    <label>Birthdate<small>mm/dd/yyyy</small></label><input type="date" name="date" />
                                </div>
                                <div class="clearfix">
                                    <label>Username <em>*</em><small>Alphanumeric (max 12 char.)</small></label><input type="text" name="username" required="required" maxlength="12" />
                                </div>
                                <div class="clearfix">
                                    <label>Password<small>max. 30 char.</small></label><input type="password" name="password" maxlength="30" />
                                </div>
                                <div class="clearfix">
                                    <label>Password check<small>Re-enter your password</small></label><input type="password" name="check" data-equals="password" maxlength="30" />
                                </div>
                                <div class="clearfix">
                                    <label>Website <em>*</em><small>A valid URL</small></label><input type="url" required="required" />
                                </div>
                                <div class="clearfix">
                                    <label>Timezone<small>Your timezone</small></label><select><option>America/Los Angeles</option><option>America/New York</option><option>Asia/Manila</option></select>
                                </div>
                                <div class="clearfix">
                                    <label>Photo<small>80x80 jpeg/png format</small></label><input type="file" />
                                </div>
                                <div class="action clearfix">
                                    <button class="button button-gray" type="submit"><span class="accept"></span>OK</button>
                                    <button class="button button-gray" type="reset">Reset</button>
                                </div>
                            </form>
                        </section>
                    </div>
                    <!-- End Forms Section -->

                    <!-- Accordion Section -->
                    <div class="main-content grid_4 omega">
                        <header><h2>Accordion</h2></header>
                        <section class="accordion clearfix">
                            <header class="current"><h2>Pane 1</h2></header>
                            <section style="display:block">
                                <h3>What is Lorem Ipsum</h3>
                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
                                <h3>Where does it come from?</h3>
                                <p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.</p>
                            </section>

                            <header><h2>Pane 2</h2></header>
                            <section>
                                <h3>What is Lorem Ipsum</h3>
                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
                                <h3>Where does it come from?</h3>
                                <p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.</p>
                            </section>

                            <header><h2>Pane 3</h2></header>
                            <section>
                                <h3>What is Lorem Ipsum</h3>
                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
                                <h3>Where does it come from?</h3>
                                <p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.</p>
                            </section>

                            <header><h2>Pane 4</h2></header>
                            <section>
                                <h3>What is Lorem Ipsum</h3>
                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
                                <h3>Where does it come from?</h3>
                                <p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.</p>
                            </section>
                        </section>
                    </div>
                    <!-- End Accordion Section -->

                    <div class="clear"></div>

                    <!-- Tabs Section -->
                    <div class="main-content">
                        <header>
                            <ul class="action-buttons clearfix fr">
                                <li><a href="#" class="button button-gray"><span class="add"></span>Add</a></li>
                                <li><a href="#" class="button button-gray"><span class="pencil"></span>Edit</a></li>
                                <li><a href="#" class="button button-gray"><span class="disk"></span>Save</a></li>
                            </ul>
                            <h2>Tabs</h2>
                        </header>
                        <section class="container_6 clearfix">
                            <div class="grid_6">
                                <ul class="tabs">
                                    <li><a href="#">Tab 1</a></li>
                                    <li><a href="#">Tab 2</a></li>
                                    <li><a href="#">Tab 3</a></li>
                                </ul>

                                <!-- tab "panes" -->
                                <div class="panes clearfix">
                                    <section><h4>First tab content.</h4> Tab contents are called "panes"</section>
                                    <section>Second tab content</section>
                                    <section>Third tab content</section>
                                </div>
                            </div>
                        </section>
                    </div>
                    <!-- End Tabs Section -->

                    <!-- Sidebar Section -->
                    <div class="main-content">
                        <header><h2>Box with Sidebar</h2></header>
                        <section class="sidebar-tabbed-pane clearfix">
                            <ul class="sidebar-tabs">
                                <li><a href="#">Sidebar 1</a></li>
                                <li><a href="#">Sidebar 2</a></li>
                                <li><a href="#">Sidebar 3</a></li>
                                <li><a href="#">Sidebar 4</a></li>
                            </ul>
                            <div class="panes">
                                <section>
                                    <h3>Sidebar 1</h3>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dignissim eleifend luctus. Fusce vel nunc neque. Fusce pulvinar placerat vestibulum. Praesent scelerisque massa non tellus molestie eu mattis mauris tristique. In urna magna, suscipit ac vestibulum a, lobortis vel enim. Nunc egestas nisi magna. Cras aliquam gravida orci ut semper. Vivamus auctor, nibh id lobortis consequat, augue elit ornare mi, ac aliquet justo odio eu nulla. Nulla ipsum nulla, iaculis nec fringilla blandit, aliquet a sem. Morbi dapibus dolor vitae libero semper sagittis. Ut hendrerit, mi a eleifend consequat, nisi neque blandit quam, nec malesuada turpis velit ac metus. Nullam a pulvinar mi. Sed lobortis sem non metus condimentum fringilla. Fusce vestibulum ultrices sapien, id molestie risus sollicitudin ultricies. Sed scelerisque posuere bibendum. Maecenas luctus, diam eget ultrices rhoncus, est elit scelerisque lectus, quis interdum mi magna in urna. Mauris vitae euismod ligula.</p>
                                </section>
                                <section>
                                    <h3>Sidebar 2</h3>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dignissim eleifend luctus. Fusce vel nunc neque. Fusce pulvinar placerat vestibulum. Praesent scelerisque massa non tellus molestie eu mattis mauris tristique. In urna magna, suscipit ac vestibulum a, lobortis vel enim. Nunc egestas nisi magna. Cras aliquam gravida orci ut semper. Vivamus auctor, nibh id lobortis consequat, augue elit ornare mi, ac aliquet justo odio eu nulla. Nulla ipsum nulla, iaculis nec fringilla blandit, aliquet a sem. Morbi dapibus dolor vitae libero semper sagittis. Ut hendrerit, mi a eleifend consequat, nisi neque blandit quam, nec malesuada turpis velit ac metus. Nullam a pulvinar mi. Sed lobortis sem non metus condimentum fringilla. Fusce vestibulum ultrices sapien, id molestie risus sollicitudin ultricies. Sed scelerisque posuere bibendum. Maecenas luctus, diam eget ultrices rhoncus, est elit scelerisque lectus, quis interdum mi magna in urna. Mauris vitae euismod ligula.</p>
                                </section>
                                <section>
                                    <h3>Sidebar 3</h3>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dignissim eleifend luctus. Fusce vel nunc neque. Fusce pulvinar placerat vestibulum. Praesent scelerisque massa non tellus molestie eu mattis mauris tristique. In urna magna, suscipit ac vestibulum a, lobortis vel enim. Nunc egestas nisi magna. Cras aliquam gravida orci ut semper. Vivamus auctor, nibh id lobortis consequat, augue elit ornare mi, ac aliquet justo odio eu nulla. Nulla ipsum nulla, iaculis nec fringilla blandit, aliquet a sem. Morbi dapibus dolor vitae libero semper sagittis. Ut hendrerit, mi a eleifend consequat, nisi neque blandit quam, nec malesuada turpis velit ac metus. Nullam a pulvinar mi. Sed lobortis sem non metus condimentum fringilla. Fusce vestibulum ultrices sapien, id molestie risus sollicitudin ultricies. Sed scelerisque posuere bibendum. Maecenas luctus, diam eget ultrices rhoncus, est elit scelerisque lectus, quis interdum mi magna in urna. Mauris vitae euismod ligula.</p>
                                </section>
                                <section>
                                    <h3>Sidebar 4</h3>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dignissim eleifend luctus. Fusce vel nunc neque. Fusce pulvinar placerat vestibulum. Praesent scelerisque massa non tellus molestie eu mattis mauris tristique. In urna magna, suscipit ac vestibulum a, lobortis vel enim. Nunc egestas nisi magna. Cras aliquam gravida orci ut semper. Vivamus auctor, nibh id lobortis consequat, augue elit ornare mi, ac aliquet justo odio eu nulla. Nulla ipsum nulla, iaculis nec fringilla blandit, aliquet a sem. Morbi dapibus dolor vitae libero semper sagittis. Ut hendrerit, mi a eleifend consequat, nisi neque blandit quam, nec malesuada turpis velit ac metus. Nullam a pulvinar mi. Sed lobortis sem non metus condimentum fringilla. Fusce vestibulum ultrices sapien, id molestie risus sollicitudin ultricies. Sed scelerisque posuere bibendum. Maecenas luctus, diam eget ultrices rhoncus, est elit scelerisque lectus, quis interdum mi magna in urna. Mauris vitae euismod ligula.</p>
                                </section>
                            </div>
                        </section>
                    </div>
                    <!-- End Sidebar Section -->

                    <!-- Tables Section -->
                    <div class="main-content">
                        <header>
                            <input type="text" class="search fr" placeholder="Search..."/>
                            <h2>Tables</h2>
                        </header>
                        <section class="with-table">
                            <table class="datatable tablesort selectable paginate full">
                                <thead>
                                    <tr>
                                        <th>Name</th>
                                        <th>Major</th>
                                        <th>Sex</th>
                                        <th>English</th>
                                        <th>Japanese</th>
                                        <th>Calculus</th>
                                        <th>Geometry</th>
                                        <th style="width: 80px"></th>
                                    </tr>
                                </thead>
                                <tfoot>
                                    <tr>
                                        <th>Name</th>
                                        <th>Major</th>
                                        <th>Sex</th>
                                        <th>English</th>
                                        <th>Japanese</th>
                                        <th>Calculus</th>
                                        <th>Geometry</th>
                                        <th></th>
                                    </tr>
                                </tfoot>
                                <tbody>
                                    <tr>
                                        <td>Student01</td>
                                        <td>Languages</td>
                                        <td>male</td>
                                        <td>80</td>
                                        <td>70</td>
                                        <td>75</td>
                                        <td>80</td>
                                        <td>
                                            <a href="#" class="view-details">Details</a>
                                            <div class="overlay-details">
                                                <header class="clearfix">
                                                    <div class="avatar fl">
                                                        <img src="images/woofunction-icons/user_32.png" width="50" height="50">
                                                    </div>
                                                    <hgroup>
                                                        <h2>John Doe</h2>
                                                        <h6>This is a subtitle. Just something descriptive about this item.</h6>
                                                        <h6>(555) 555-WORK</h6>
                                                    </hgroup>
                                                </header>
                                                <section>
                                                    <table class="simple full">
                                                        <thead>
                                                            <tr>
                                                                <th></th><th>Column 1</th><th>Column 2</th><th>Column 3</th><th>Column 4</th><th> Column 5</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <th>Item 1</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 2</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 3</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 4</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 5</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </section>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Student02</td>
                                        <td>Mathematics</td>
                                        <td>male</td>
                                        <td>90</td>
                                        <td>88</td>
                                        <td>100</td>
                                        <td>90</td>
                                        <td>
                                            <a href="#" class="view-details">Details</a>
                                            <div class="overlay-details">
                                                <header class="clearfix">
                                                    <div class="avatar fl">
                                                        <img src="images/woofunction-icons/user_32.png" width="50" height="50">
                                                    </div>
                                                    <hgroup>
                                                        <h2>John Doe</h2>
                                                        <h6>This is a subtitle. Just something descriptive about this item.</h6>
                                                        <h6>(555) 555-WORK</h6>
                                                    </hgroup>
                                                </header>
                                                <section>
                                                    <table class="simple full">
                                                        <thead>
                                                            <tr>
                                                                <th></th><th>Column 1</th><th>Column 2</th><th>Column 3</th><th>Column 4</th><th> Column 5</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <th>Item 1</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 2</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 3</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 4</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 5</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </section>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Student03</td>
                                        <td>Languages</td>
                                        <td>female</td>
                                        <td>85</td>
                                        <td>95</td>
                                        <td>80</td>
                                        <td>85</td>
                                        <td>
                                            <a href="#" class="view-details">Details</a>
                                            <div class="overlay-details">
                                                <header class="clearfix">
                                                    <div class="avatar fl">
                                                        <img src="images/woofunction-icons/user_32.png" width="50" height="50">
                                                    </div>
                                                    <hgroup>
                                                        <h2>John Doe</h2>
                                                        <h6>This is a subtitle. Just something descriptive about this item.</h6>
                                                        <h6>(555) 555-WORK</h6>
                                                    </hgroup>
                                                </header>
                                                <section>
                                                    <table class="simple full">
                                                        <thead>
                                                            <tr>
                                                                <th></th><th>Column 1</th><th>Column 2</th><th>Column 3</th><th>Column 4</th><th> Column 5</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <th>Item 1</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 2</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 3</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 4</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 5</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </section>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Student04</td>
                                        <td>Languages</td>
                                        <td>male</td>
                                        <td>60</td>
                                        <td>55</td>
                                        <td>100</td>
                                        <td>100</td>
                                        <td>
                                            <a href="#" class="view-details">Details</a>
                                            <div class="overlay-details">
                                                <header class="clearfix">
                                                    <div class="avatar fl">
                                                        <img src="images/woofunction-icons/user_32.png" width="50" height="50">
                                                    </div>
                                                    <hgroup>
                                                        <h2>John Doe</h2>
                                                        <h6>This is a subtitle. Just something descriptive about this item.</h6>
                                                        <h6>(555) 555-WORK</h6>
                                                    </hgroup>
                                                </header>
                                                <section>
                                                    <table class="simple full">
                                                        <thead>
                                                            <tr>
                                                                <th></th><th>Column 1</th><th>Column 2</th><th>Column 3</th><th>Column 4</th><th> Column 5</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <th>Item 1</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 2</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 3</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 4</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 5</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </section>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Student05</td>
                                        <td>Languages</td>
                                        <td>female</td>
                                        <td>68</td>
                                        <td>80</td>
                                        <td>95</td>
                                        <td>80</td>
                                        <td>
                                            <a href="#" class="view-details">Details</a>
                                            <div class="overlay-details">
                                                <header class="clearfix">
                                                    <div class="avatar fl">
                                                        <img src="images/woofunction-icons/user_32.png" width="50" height="50">
                                                    </div>
                                                    <hgroup>
                                                        <h2>John Doe</h2>
                                                        <h6>This is a subtitle. Just something descriptive about this item.</h6>
                                                        <h6>(555) 555-WORK</h6>
                                                    </hgroup>
                                                </header>
                                                <section>
                                                    <table class="simple full">
                                                        <thead>
                                                            <tr>
                                                                <th></th><th>Column 1</th><th>Column 2</th><th>Column 3</th><th>Column 4</th><th> Column 5</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <th>Item 1</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 2</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 3</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 4</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 5</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </section>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Student06</td>
                                        <td>Mathematics</td>
                                        <td>male</td>
                                        <td>100</td>
                                        <td>99</td>
                                        <td>100</td>
                                        <td>90</td>
                                        <td>
                                            <a href="#" class="view-details">Details</a>
                                            <div class="overlay-details">
                                                <header class="clearfix">
                                                    <div class="avatar fl">
                                                        <img src="images/woofunction-icons/user_32.png" width="50" height="50">
                                                    </div>
                                                    <hgroup>
                                                        <h2>John Doe</h2>
                                                        <h6>This is a subtitle. Just something descriptive about this item.</h6>
                                                        <h6>(555) 555-WORK</h6>
                                                    </hgroup>
                                                </header>
                                                <section>
                                                    <table class="simple full">
                                                        <thead>
                                                            <tr>
                                                                <th></th><th>Column 1</th><th>Column 2</th><th>Column 3</th><th>Column 4</th><th> Column 5</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <th>Item 1</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 2</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 3</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 4</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 5</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </section>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Student07</td>
                                        <td>Mathematics</td>
                                        <td>male</td>
                                        <td>85</td>
                                        <td>68</td>
                                        <td>90</td>
                                        <td>90</td>
                                        <td>
                                            <a href="#" class="view-details">Details</a>
                                            <div class="overlay-details">
                                                <header class="clearfix">
                                                    <div class="avatar fl">
                                                        <img src="images/woofunction-icons/user_32.png" width="50" height="50">
                                                    </div>
                                                    <hgroup>
                                                        <h2>John Doe</h2>
                                                        <h6>This is a subtitle. Just something descriptive about this item.</h6>
                                                        <h6>(555) 555-WORK</h6>
                                                    </hgroup>
                                                </header>
                                                <section>
                                                    <table class="simple full">
                                                        <thead>
                                                            <tr>
                                                                <th></th><th>Column 1</th><th>Column 2</th><th>Column 3</th><th>Column 4</th><th> Column 5</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <th>Item 1</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 2</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 3</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 4</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 5</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </section>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Student08</td>
                                        <td>Languages</td>
                                        <td>male</td>
                                        <td>100</td>
                                        <td>90</td>
                                        <td>90</td>
                                        <td>85</td>
                                        <td>
                                            <a href="#" class="view-details">Details</a>
                                            <div class="overlay-details">
                                                <header class="clearfix">
                                                    <div class="avatar fl">
                                                        <img src="images/woofunction-icons/user_32.png" width="50" height="50">
                                                    </div>
                                                    <hgroup>
                                                        <h2>John Doe</h2>
                                                        <h6>This is a subtitle. Just something descriptive about this item.</h6>
                                                        <h6>(555) 555-WORK</h6>
                                                    </hgroup>
                                                </header>
                                                <section>
                                                    <table class="simple full">
                                                        <thead>
                                                            <tr>
                                                                <th></th><th>Column 1</th><th>Column 2</th><th>Column 3</th><th>Column 4</th><th> Column 5</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <th>Item 1</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 2</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 3</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 4</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 5</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </section>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Student09</td>
                                        <td>Mathematics</td>
                                        <td>male</td>
                                        <td>80</td>
                                        <td>50</td>
                                        <td>65</td>
                                        <td>75</td>
                                        <td>
                                            <a href="#" class="view-details">Details</a>
                                            <div class="overlay-details">
                                                <header class="clearfix">
                                                    <div class="avatar fl">
                                                        <img src="images/woofunction-icons/user_32.png" width="50" height="50">
                                                    </div>
                                                    <hgroup>
                                                        <h2>John Doe</h2>
                                                        <h6>This is a subtitle. Just something descriptive about this item.</h6>
                                                        <h6>(555) 555-WORK</h6>
                                                    </hgroup>
                                                </header>
                                                <section>
                                                    <table class="simple full">
                                                        <thead>
                                                            <tr>
                                                                <th></th><th>Column 1</th><th>Column 2</th><th>Column 3</th><th>Column 4</th><th> Column 5</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <th>Item 1</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 2</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 3</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 4</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 5</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </section>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Student10</td>
                                        <td>Languages</td>
                                        <td>male</td>
                                        <td>85</td>
                                        <td>100</td>
                                        <td>100</td>
                                        <td>90</td>
                                        <td>
                                            <a href="#" class="view-details">Details</a>
                                            <div class="overlay-details">
                                                <header class="clearfix">
                                                    <div class="avatar fl">
                                                        <img src="images/woofunction-icons/user_32.png" width="50" height="50">
                                                    </div>
                                                    <hgroup>
                                                        <h2>John Doe</h2>
                                                        <h6>This is a subtitle. Just something descriptive about this item.</h6>
                                                        <h6>(555) 555-WORK</h6>
                                                    </hgroup>
                                                </header>
                                                <section>
                                                    <table class="simple full">
                                                        <thead>
                                                            <tr>
                                                                <th></th><th>Column 1</th><th>Column 2</th><th>Column 3</th><th>Column 4</th><th> Column 5</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <th>Item 1</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 2</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 3</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 4</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 5</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </section>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Student11</td>
                                        <td>Languages</td>
                                        <td>male</td>
                                        <td>86</td>
                                        <td>85</td>
                                        <td>100</td>
                                        <td>100</td>
                                        <td>
                                            <a href="#" class="view-details">Details</a>
                                            <div class="overlay-details">
                                                <header class="clearfix">
                                                    <div class="avatar fl">
                                                        <img src="images/woofunction-icons/user_32.png" width="50" height="50">
                                                    </div>
                                                    <hgroup>
                                                        <h2>John Doe</h2>
                                                        <h6>This is a subtitle. Just something descriptive about this item.</h6>
                                                        <h6>(555) 555-WORK</h6>
                                                    </hgroup>
                                                </header>
                                                <section>
                                                    <table class="simple full">
                                                        <thead>
                                                            <tr>
                                                                <th></th><th>Column 1</th><th>Column 2</th><th>Column 3</th><th>Column 4</th><th> Column 5</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <th>Item 1</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 2</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 3</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 4</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 5</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </section>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Student12</td>
                                        <td>Mathematics</td>
                                        <td>female</td>
                                        <td>100</td>
                                        <td>75</td>
                                        <td>70</td>
                                        <td>85</td>
                                        <td>
                                            <a href="#" class="view-details">Details</a>
                                            <div class="overlay-details">
                                                <header class="clearfix">
                                                    <div class="avatar fl">
                                                        <img src="images/woofunction-icons/user_32.png" width="50" height="50">
                                                    </div>
                                                    <hgroup>
                                                        <h2>John Doe</h2>
                                                        <h6>This is a subtitle. Just something descriptive about this item.</h6>
                                                        <h6>(555) 555-WORK</h6>
                                                    </hgroup>
                                                </header>
                                                <section>
                                                    <table class="simple full">
                                                        <thead>
                                                            <tr>
                                                                <th></th><th>Column 1</th><th>Column 2</th><th>Column 3</th><th>Column 4</th><th> Column 5</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <th>Item 1</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 2</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 3</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 4</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 5</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </section>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Student13</td>
                                        <td>Languages</td>
                                        <td>female</td>
                                        <td>100</td>
                                        <td>80</td>
                                        <td>100</td>
                                        <td>90</td>
                                        <td>
                                            <a href="#" class="view-details">Details</a>
                                            <div class="overlay-details">
                                                <header class="clearfix">
                                                    <div class="avatar fl">
                                                        <img src="images/woofunction-icons/user_32.png" width="50" height="50">
                                                    </div>
                                                    <hgroup>
                                                        <h2>John Doe</h2>
                                                        <h6>This is a subtitle. Just something descriptive about this item.</h6>
                                                        <h6>(555) 555-WORK</h6>
                                                    </hgroup>
                                                </header>
                                                <section>
                                                    <table class="simple full">
                                                        <thead>
                                                            <tr>
                                                                <th></th><th>Column 1</th><th>Column 2</th><th>Column 3</th><th>Column 4</th><th> Column 5</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <th>Item 1</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 2</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 3</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 4</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 5</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </section>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Student14</td>
                                        <td>Languages</td>
                                        <td>female</td>
                                        <td>50</td>
                                        <td>45</td>
                                        <td>55</td>
                                        <td>90</td>
                                        <td>
                                            <a href="#" class="view-details">Details</a>
                                            <div class="overlay-details">
                                                <header class="clearfix">
                                                    <div class="avatar fl">
                                                        <img src="images/woofunction-icons/user_32.png" width="50" height="50">
                                                    </div>
                                                    <hgroup>
                                                        <h2>John Doe</h2>
                                                        <h6>This is a subtitle. Just something descriptive about this item.</h6>
                                                        <h6>(555) 555-WORK</h6>
                                                    </hgroup>
                                                </header>
                                                <section>
                                                    <table class="simple full">
                                                        <thead>
                                                            <tr>
                                                                <th></th><th>Column 1</th><th>Column 2</th><th>Column 3</th><th>Column 4</th><th> Column 5</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <th>Item 1</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 2</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 3</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 4</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 5</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </section>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Student15</td>
                                        <td>Languages</td>
                                        <td>male</td>
                                        <td>95</td>
                                        <td>35</td>
                                        <td>100</td>
                                        <td>90</td>
                                        <td>
                                            <a href="#" class="view-details">Details</a>
                                            <div class="overlay-details">
                                                <header class="clearfix">
                                                    <div class="avatar fl">
                                                        <img src="images/woofunction-icons/user_32.png" width="50" height="50">
                                                    </div>
                                                    <hgroup>
                                                        <h2>John Doe</h2>
                                                        <h6>This is a subtitle. Just something descriptive about this item.</h6>
                                                        <h6>(555) 555-WORK</h6>
                                                    </hgroup>
                                                </header>
                                                <section>
                                                    <table class="simple full">
                                                        <thead>
                                                            <tr>
                                                                <th></th><th>Column 1</th><th>Column 2</th><th>Column 3</th><th>Column 4</th><th> Column 5</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <th>Item 1</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 2</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 3</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 4</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 5</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </section>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Student16</td>
                                        <td>Languages</td>
                                        <td>female</td>
                                        <td>100</td>
                                        <td>50</td>
                                        <td>30</td>
                                        <td>70</td>
                                        <td>
                                            <a href="#" class="view-details">Details</a>
                                            <div class="overlay-details">
                                                <header class="clearfix">
                                                    <div class="avatar fl">
                                                        <img src="images/woofunction-icons/user_32.png" width="50" height="50">
                                                    </div>
                                                    <hgroup>
                                                        <h2>John Doe</h2>
                                                        <h6>This is a subtitle. Just something descriptive about this item.</h6>
                                                        <h6>(555) 555-WORK</h6>
                                                    </hgroup>
                                                </header>
                                                <section>
                                                    <table class="simple full">
                                                        <thead>
                                                            <tr>
                                                                <th></th><th>Column 1</th><th>Column 2</th><th>Column 3</th><th>Column 4</th><th> Column 5</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <th>Item 1</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 2</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 3</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 4</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 5</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </section>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Student17</td>
                                        <td>Languages</td>
                                        <td>female</td>
                                        <td>80</td>
                                        <td>100</td>
                                        <td>55</td>
                                        <td>65</td>
                                        <td>
                                            <a href="#" class="view-details">Details</a>
                                            <div class="overlay-details">
                                                <header class="clearfix">
                                                    <div class="avatar fl">
                                                        <img src="images/woofunction-icons/user_32.png" width="50" height="50">
                                                    </div>
                                                    <hgroup>
                                                        <h2>John Doe</h2>
                                                        <h6>This is a subtitle. Just something descriptive about this item.</h6>
                                                        <h6>(555) 555-WORK</h6>
                                                    </hgroup>
                                                </header>
                                                <section>
                                                    <table class="simple full">
                                                        <thead>
                                                            <tr>
                                                                <th></th><th>Column 1</th><th>Column 2</th><th>Column 3</th><th>Column 4</th><th> Column 5</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <th>Item 1</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 2</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 3</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 4</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 5</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </section>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Student18</td>
                                        <td>Mathematics</td>
                                        <td>male</td>
                                        <td>30</td>
                                        <td>49</td>
                                        <td>55</td>
                                        <td>75</td>
                                        <td>
                                            <a href="#" class="view-details">Details</a>
                                            <div class="overlay-details">
                                                <header class="clearfix">
                                                    <div class="avatar fl">
                                                        <img src="images/woofunction-icons/user_32.png" width="50" height="50">
                                                    </div>
                                                    <hgroup>
                                                        <h2>John Doe</h2>
                                                        <h6>This is a subtitle. Just something descriptive about this item.</h6>
                                                        <h6>(555) 555-WORK</h6>
                                                    </hgroup>
                                                </header>
                                                <section>
                                                    <table class="simple full">
                                                        <thead>
                                                            <tr>
                                                                <th></th><th>Column 1</th><th>Column 2</th><th>Column 3</th><th>Column 4</th><th> Column 5</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <th>Item 1</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 2</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 3</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 4</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 5</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </section>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Student19</td>
                                        <td>Languages</td>
                                        <td>male</td>
                                        <td>68</td>
                                        <td>90</td>
                                        <td>88</td>
                                        <td>70</td>
                                        <td>
                                            <a href="#" class="view-details">Details</a>
                                            <div class="overlay-details">
                                                <header class="clearfix">
                                                    <div class="avatar fl">
                                                        <img src="images/woofunction-icons/user_32.png" width="50" height="50">
                                                    </div>
                                                    <hgroup>
                                                        <h2>John Doe</h2>
                                                        <h6>This is a subtitle. Just something descriptive about this item.</h6>
                                                        <h6>(555) 555-WORK</h6>
                                                    </hgroup>
                                                </header>
                                                <section>
                                                    <table class="simple full">
                                                        <thead>
                                                            <tr>
                                                                <th></th><th>Column 1</th><th>Column 2</th><th>Column 3</th><th>Column 4</th><th> Column 5</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <th>Item 1</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 2</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 3</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 4</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 5</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </section>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Student20</td>
                                        <td>Mathematics</td>
                                        <td>male</td>
                                        <td>40</td>
                                        <td>45</td>
                                        <td>40</td>
                                        <td>80</td>
                                        <td>
                                            <a href="#" class="view-details">Details</a>
                                            <div class="overlay-details">
                                                <header class="clearfix">
                                                    <div class="avatar fl">
                                                        <img src="images/woofunction-icons/user_32.png" width="50" height="50">
                                                    </div>
                                                    <hgroup>
                                                        <h2>John Doe</h2>
                                                        <h6>This is a subtitle. Just something descriptive about this item.</h6>
                                                        <h6>(555) 555-WORK</h6>
                                                    </hgroup>
                                                </header>
                                                <section>
                                                    <table class="simple full">
                                                        <thead>
                                                            <tr>
                                                                <th></th><th>Column 1</th><th>Column 2</th><th>Column 3</th><th>Column 4</th><th> Column 5</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <th>Item 1</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 2</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 3</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 4</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 5</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </section>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Student21</td>
                                        <td>Languages</td>
                                        <td>male</td>
                                        <td>50</td>
                                        <td>45</td>
                                        <td>100</td>
                                        <td>100</td>
                                        <td>
                                            <a href="#" class="view-details">Details</a>
                                            <div class="overlay-details">
                                                <header class="clearfix">
                                                    <div class="avatar fl">
                                                        <img src="images/woofunction-icons/user_32.png" width="50" height="50">
                                                    </div>
                                                    <hgroup>
                                                        <h2>John Doe</h2>
                                                        <h6>This is a subtitle. Just something descriptive about this item.</h6>
                                                        <h6>(555) 555-WORK</h6>
                                                    </hgroup>
                                                </header>
                                                <section>
                                                    <table class="simple full">
                                                        <thead>
                                                            <tr>
                                                                <th></th><th>Column 1</th><th>Column 2</th><th>Column 3</th><th>Column 4</th><th> Column 5</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <th>Item 1</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 2</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 3</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 4</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 5</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </section>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Student22</td>
                                        <td>Mathematics</td>
                                        <td>male</td>
                                        <td>100</td>
                                        <td>99</td>
                                        <td>100</td>
                                        <td>90</td>
                                        <td>
                                            <a href="#" class="view-details">Details</a>
                                            <div class="overlay-details">
                                                <header class="clearfix">
                                                    <div class="avatar fl">
                                                        <img src="images/woofunction-icons/user_32.png" width="50" height="50">
                                                    </div>
                                                    <hgroup>
                                                        <h2>John Doe</h2>
                                                        <h6>This is a subtitle. Just something descriptive about this item.</h6>
                                                        <h6>(555) 555-WORK</h6>
                                                    </hgroup>
                                                </header>
                                                <section>
                                                    <table class="simple full">
                                                        <thead>
                                                            <tr>
                                                                <th></th><th>Column 1</th><th>Column 2</th><th>Column 3</th><th>Column 4</th><th> Column 5</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <th>Item 1</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 2</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 3</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 4</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 5</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </section>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Student23</td>
                                        <td>Languages</td>
                                        <td>female</td>
                                        <td>85</td>
                                        <td>80</td>
                                        <td>80</td>
                                        <td>80</td>
                                        <td>
                                            <a href="#" class="view-details">Details</a>
                                            <div class="overlay-details">
                                                <header class="clearfix">
                                                    <div class="avatar fl">
                                                        <img src="images/woofunction-icons/user_32.png" width="50" height="50">
                                                    </div>
                                                    <hgroup>
                                                        <h2>John Doe</h2>
                                                        <h6>This is a subtitle. Just something descriptive about this item.</h6>
                                                        <h6>(555) 555-WORK</h6>
                                                    </hgroup>
                                                </header>
                                                <section>
                                                    <table class="simple full">
                                                        <thead>
                                                            <tr>
                                                                <th></th><th>Column 1</th><th>Column 2</th><th>Column 3</th><th>Column 4</th><th> Column 5</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <th>Item 1</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 2</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 3</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 4</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Item 5</th><td>40</td><td>50</td><td>60</td><td>70</td><td>80</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </section>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <div class="container_6 clearfix">
                                <div class="grid_6">
                                    <div class="message info"><b>TIP:</b> You can press CTRL to select multiple rows</div>
                                </div>
                            </div>
                        </section>
                    </div>
                    <!-- End Tables Section -->
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


    <!-- simple dialog -->
    <div class="widget modal" id="simpledialog">
        <header><h2>This is a simple modal dialog</h2></header>
        <section>
            <p>
                Are you sure you want to do this?
            </p>

            <!-- yes/no buttons -->
            <p>
                <button class="button button-blue close">Yes</button>
                <button class="button button-gray close">No</button>
            </p>
        </section>
    </div>
    <!-- end simple dialog -->

<script>
$(function () {
    /**
     * Modal Dialog Boxes Setup
     */

    var triggers = $(".modalInput").overlay({

        // some mask tweaks suitable for modal dialogs
        mask: {
            color: '#000',
            loadSpeed: 200,
            opacity: 0.5
        },

        closeOnClick: false
    });

    /* Simple Modal Box */
    var buttons1 = $("#simpledialog button").click(function(e) {
	
        // get user input
        var yes = buttons1.index(this) === 0;

        if (yes) {
            // do the processing here
        }
    });

});
</script>

</body>
</html>
