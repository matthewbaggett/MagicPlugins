<header>
            <div class="clearfix">
                <div class="shortcuts">
                    <ul class="clearfix">
                        <li><a href="#" title="{t nodfn=true}Monitor Activities{/t}"><img src="{$page->site->sys_root}/plugins/cms/resources/images/woofunction-icons/activity_monitor.png" /><span>{t}Activity{/t}</span></a></li>
                        <li><a href="#" title="{t nodfn=true}Add/Edit Contacts{/t}"><img src="{$page->site->sys_root}/plugins/cms/resources/images/woofunction-icons/address_book_32.png" /><span>{t}Contacts{/t}</span><em>300</em></a></li>
                        <li><a href="#" title="{t nodfn=true}View Recent Comments{/t}"><img src="{$page->site->sys_root}/plugins/cms/resources/images/woofunction-icons/comment_32.png" /><span>{t}Comments{/t}</span></a><em>20</em></li>
                        <li><a href="#" title="{t nodfn=true}View Recent Orders{/t}"><img src="{$page->site->sys_root}/plugins/cms/resources/images/woofunction-icons/basket_32.png" /><span>{t}Orders{/t}</span><em>20</em></a></li>
                        <li><a href="#" title="{t nodfn=true}Read Mail{/t}"><img src="{$page->site->sys_root}/plugins/cms/resources/images/woofunction-icons/email_32.png" /><span>{t}Mail{/t}</span><em>4</em></a></li>
                        <li><a href="#" title="{t nodfn=true}Send Newsletters{/t}"><img src="{$page->site->sys_root}/plugins/cms/resources/images/woofunction-icons/newspaper_32.png" /><span>{t}Newsletters{/t}</span></a></li>
                        <li><a href="#" title="{t nodfn=true}View Alerts{/t}"><img src="{$page->site->sys_root}/plugins/cms/resources/images/woofunction-icons/error_button.png" /><span>{t}Alerts{/t}</span><em>20</em></a></li>
                        <li><a href="#" title="{t nodfn=true}View Reports{/t}"><img src="{$page->site->sys_root}/plugins/cms/resources/images/woofunction-icons/chart_32.png" /><span>{t}Reports{/t}</span></a></li>
                        <li><a href="#" title="{t nodfn=true}Advanced Search{/t}"><img src="{$page->site->sys_root}/plugins/cms/resources/images/woofunction-icons/search_button_32.png" /><span>{t}Search{/t}</span></a></li>
                        <li><a href="#" title="{t nodfn=true}Add/Edit Users{/t}"><img src="{$page->site->sys_root}/plugins/cms/resources/images/woofunction-icons/user_32.png" /><span>{t}Users{/t}</span><em>5</em></a></li>
                    </ul>
                </div>

                <div class="clear"></div>

                <a class="chevron fr">{t}Expand / Collapse{/t}</a>
                <nav>
                	
                    <ul class="clearfix">
                        
                        {include file="manage.navigation.dyn.tpl"}
                        
                        
                        
                        <li class="fr action">
                            <a href="documentation/index.html" class="button button-orange help" rel="#overlay"><span class="help"></span>{t}Help{/t}</a>
                        </li>
                        
                        
                        <li class="fr"><a href="#" class="arrow-down">{$page->user->get_firstname()} {$page->user->get_surname()}</a>
                            <ul>
                                <li><a href="{$page->site->sys_root}/Manage/Account">{t}Manage account{/t}</a></li>
                                <li><a href="#">{t}Users{/t}</a></li>
                                <li><a href="#">{t}Groups{/t}</a></li>
                                <li><a href="{$page->site->sys_root}/Manage/Logout">{t}Log out{/t}</a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>
            </div>
        </header>
