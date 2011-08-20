<header>
            <div class="clearfix">
                <div class="shortcuts">
                    <ul class="clearfix">
                        <li><a href="#" title="Monitor Activities"><img src="{$page->site->sys_root}/plugins/cms/resources/images/woofunction-icons/activity_monitor.png" /><span>Activity</span></a></li>
                        <li><a href="#" title="Add/Edit Contacts"><img src="{$page->site->sys_root}/plugins/cms/resources/images/woofunction-icons/address_book_32.png" /><span>Contacts</span><em>300</em></a></li>
                        <li><a href="#" title="View Recent Comments"><img src="{$page->site->sys_root}/plugins/cms/resources/images/woofunction-icons/comment_32.png" /><span>Comments</span></a><em>20</em></li>
                        <li><a href="#" title="View Recent Orders"><img src="{$page->site->sys_root}/plugins/cms/resources/images/woofunction-icons/basket_32.png" /><span>Orders</span><em>20</em></a></li>
                        <li><a href="#" title="Read Mail"><img src="{$page->site->sys_root}/plugins/cms/resources/images/woofunction-icons/email_32.png" /><span>Mail</span><em>4</em></a></li>
                        <li><a href="#" title="Send Newsletters"><img src="{$page->site->sys_root}/plugins/cms/resources/images/woofunction-icons/newspaper_32.png" /><span>Newsletters</span></a></li>
                        <li><a href="#" title="View Alerts"><img src="{$page->site->sys_root}/plugins/cms/resources/images/woofunction-icons/error_button.png" /><span>Alerts</span><em>20</em></a></li>
                        <li><a href="#" title="View Reports"><img src="{$page->site->sys_root}/plugins/cms/resources/images/woofunction-icons/chart_32.png" /><span>Reports</span></a></li>
                        <li><a href="#" title="Advanced Search"><img src="{$page->site->sys_root}/plugins/cms/resources/images/woofunction-icons/search_button_32.png" /><span>Search</span></a></li>
                        <li><a href="#" title="Add/Edit Users"><img src="{$page->site->sys_root}/plugins/cms/resources/images/woofunction-icons/user_32.png" /><span>Users</span><em>5</em></a></li>
                    </ul>
                </div>

                <div class="clear"></div>

                <a class="chevron fr">Expand/Collapse</a>
                <nav>
                	
                    <ul class="clearfix">
                        <li {if $page->server['REQUEST_URI'] eq '/CMS/'} class="active" {/if}><a href="/CMS/">Dashboard</a></li>
                        <li {if $page->server['REQUEST_URI'] eq '/CMS/Objects/list'} class="active" {/if}><a href="/CMS/Objects/list">Objects</a></li>
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
                        <li class="fr"><a href="#" class="arrow-down">{$page->user->get_firstname()} {$page->user->get_surname()}</a>
                            <ul>
                                <li><a href="{$page->site->sys_root}/CMS/Account">Manage account</a></li>
                                <li><a href="#">Users</a></li>
                                <li><a href="#">Groups</a></li>
                                <li><a href="{$page->site->sys_root}/CMS/Logout">Log out</a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>
            </div>
        </header>
