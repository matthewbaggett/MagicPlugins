<header>
            <div class="clearfix">
                <div class="shortcuts">
                    <ul class="clearfix">
                        <li><a href="#" title="{t('Monitor Activities')}"><img src="{$page->site->sys_root}/plugins/cms/resources/images/woofunction-icons/activity_monitor.png" /><span>{t('Activity')}</span></a></li>
                        <li><a href="#" title="{t('Add/Edit Contacts')}"><img src="{$page->site->sys_root}/plugins/cms/resources/images/woofunction-icons/address_book_32.png" /><span>{t('Contacts')}</span><em>300</em></a></li>
                        <li><a href="#" title="{t('View Recent Comments')}"><img src="{$page->site->sys_root}/plugins/cms/resources/images/woofunction-icons/comment_32.png" /><span>{t('Comments')}</span></a><em>20</em></li>
                        <li><a href="#" title="{t('View Recent Orders')}"><img src="{$page->site->sys_root}/plugins/cms/resources/images/woofunction-icons/basket_32.png" /><span>{t('Orders')}</span><em>20</em></a></li>
                        <li><a href="#" title="{t('Read Mail')}"><img src="{$page->site->sys_root}/plugins/cms/resources/images/woofunction-icons/email_32.png" /><span>{t('Mail')}</span><em>4</em></a></li>
                        <li><a href="#" title="{t('Send Newsletters')}"><img src="{$page->site->sys_root}/plugins/cms/resources/images/woofunction-icons/newspaper_32.png" /><span>{t('Newsletters')}</span></a></li>
                        <li><a href="#" title="{t('View Alerts')}"><img src="{$page->site->sys_root}/plugins/cms/resources/images/woofunction-icons/error_button.png" /><span>{t('Alerts')}</span><em>20</em></a></li>
                        <li><a href="#" title="{t('View Reports')}"><img src="{$page->site->sys_root}/plugins/cms/resources/images/woofunction-icons/chart_32.png" /><span>{t('Reports')}</span></a></li>
                        <li><a href="#" title="{t('Advanced Search')}"><img src="{$page->site->sys_root}/plugins/cms/resources/images/woofunction-icons/search_button_32.png" /><span>{t('Search')}</span></a></li>
                        <li><a href="#" title="{t('Add/Edit Users')}"><img src="{$page->site->sys_root}/plugins/cms/resources/images/woofunction-icons/user_32.png" /><span>{t('Users')}</span><em>5</em></a></li>
                    </ul>
                </div>

                <div class="clear"></div>

                <a class="chevron fr">{t('Expand / Collapse')}</a>
                <nav>
                	
                    <ul class="clearfix">
                        <li {if $page->server['REQUEST_URI'] eq '/Manage/'} class="active" {/if}><a href="/Manage/">{t('Dashboard')}</a></li>
                        <li {if $page->server['REQUEST_URI'] eq '/Manage/Objects/list'} class="active" {/if}><a href="/Manage/Objects/list">{t('Objects')}</a></li>
                        <!-- <li><a href="#" class="arrow-down">Dropdown</a>
                            <ul>
                                <li><a href="#">Submenu 1</a></li>
                                <li><a href="#">Submenu 2</a></li>
                                <li><a href="#">Submenu 3</a></li>
                                <li><a href="#">Submenu 4</a></li>
                            </ul>
                        </li> -->
                        <li class="fr action">
                            <a href="documentation/index.html" class="button button-orange help" rel="#overlay"><span class="help"></span>{t('Help')}</a>
                        </li>
                        
                        
                        <li class="fr"><a href="#" class="arrow-down">{$page->user->get_firstname()} {$page->user->get_surname()}</a>
                            <ul>
                                <li><a href="{$page->site->sys_root}/Manage/Account">{t('Manage account')}</a></li>
                                <li><a href="#">{t('Users')}</a></li>
                                <li><a href="#">{t('Groups')}</a></li>
                                <li><a href="{$page->site->sys_root}/Manage/Logout">{t('Log out')}</a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>
            </div>
        </header>
