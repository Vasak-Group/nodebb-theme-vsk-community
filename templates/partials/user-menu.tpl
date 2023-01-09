{{{ if !maintenanceHeader }}}
    {{{ if config.loggedIn }}}
        <li class="nav-item notifications dropdown d-none d-sm-block" component="notifications"
            title="[[global:header.notifications]]">
            <a href="{relative_path}/notifications" class="nav-link" data-bs-toggle="dropdown" id="notif_dropdown"
                data-ajaxify="false" role="button">
                <i component="notifications/icon"
                    class="fa fa-fw {{{ if unreadCount.notification}}}fa-bell{{{ else }}}fa-bell-o{{{ end }}} unread-count"
                    data-content="{unreadCount.notification}"></i>
            </a>
            <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="notif_dropdown">
                <li>
                    <ul component="notifications/list" class="notification-list">
                        <li class="loading-text">
                            <a href="#"><i class="fa fa-refresh fa-spin"></i> [[global:notifications.loading]]</a>
                        </li>
                    </ul>
                </li>
                <li class="notif-dropdown-link">
                    <div class="btn-group d-flex justify-content-center">
                        <a role="button" href="#" class="btn btn-light mark-all-read"><i class="fa fa-check-double"></i>
                            [[notifications:mark_all_read]]</a>
                        <a class="btn btn-light" href="{relative_path}/notifications"><i class="fa fa-list"></i>
                            [[notifications:see_all]]</a>
                    </div>
                </li>
            </ul>
        </li>

        <!-- IF canChat -->
        <li class="nav-item chats dropdown" title="[[global:header.chats]]">
            <a class="nav-link" data-bs-toggle="dropdown" href="{relative_path}/user/{user.userslug}/chats"
                id="chat_dropdown" component="chat/dropdown" data-ajaxify="false" role="button">
                <i component="chat/icon"
                    class="fa {{{ if unreadCount.chat}}}fa-comment{{{ else }}}fa-comment-o{{{ end }}} fa-fw unread-count"
                    data-content="{unreadCount.chat}"></i> <span class="d-inline d-sm-none">[[global:header.chats]]</span>
            </a>
            <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="chat_dropdown">
                <li>
                    <ul component="chat/list" class="chat-list chats-list">
                        <li class="loading-text">
                            <a href="#"><i class="fa fa-refresh fa-spin"></i> [[global:chats.loading]]</a>
                        </li>
                    </ul>
                </li>
                <li class="notif-dropdown-link">
                    <div class="btn-group d-flex justify-content-center">
                        <a class="btn btn-light mark-all-read" href="#" component="chats/mark-all-read"><i
                                class="fa fa-check-double"></i> [[modules:chat.mark_all_read]]</a>
                        <a class="btn btn-light" href="{relative_path}/user/{user.userslug}/chats"><i
                                class="fa fa-comments"></i> [[modules:chat.see_all]]</a>
                    </div>
                </li>
            </ul>
        </li>
        <!-- ENDIF canChat -->

        <!-- IMPORT partials/header/user-menu.tpl -->
    {{{ else }}}
        {{{ if allowRegistration }}}
            <li><a class="nav-link" href="{relative_path}/register">
                    <i class="fa fa-pencil fa-fw d-inline-block d-sm-none"></i>
                    <span>[[global:register]]</span>
            </a></li>
        {{{ end }}}
        <li><a class="nav-link" href="{relative_path}/login">
                <i class="fa fa-sign-in fa-fw d-inline-block d-sm-none"></i>
                <span>[[global:login]]</span>
        </a></li>
    {{{ end }}}
{{{ else }}}
    <li><a href="{relative_path}/login">
            <i class="fa fa-sign-in fa-fw d-block d-sm-none"></i>
            <span>[[global:login]]</span>
    </a></li>
{{{ end }}}