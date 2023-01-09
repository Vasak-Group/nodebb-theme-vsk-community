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

        <li id="user_label" class="nav-item dropdown" title="[[global:header.profile]]">
            <label for="user-control-list-check" data-bs-toggle="dropdown" id="user_dropdown" role="button" style="margin-top: 9px; margin-left: 2px;">
                {buildAvatar(user, "32", true)}
                <span id="user-header-name" class="d-block d-sm-none">{user.username}</span>
            </label>
            <input type="checkbox" class="hidden" id="user-control-list-check" aria-hidden="true">
            <ul id="user-control-list" component="header/usercontrol" class="dropdown-menu dropdown-menu-end" aria-labelledby="user_dropdown">
                <li>
                    <a class="dropdown-item" component="header/profilelink" href="{relative_path}/user/{user.userslug}">
                        <i component="user/status" class="fa fa-fw fa-circle status {user.status}"></i> <span component="header/username">{user.username}</span>
                    </a>
                </li>
                <li role="presentation" class="dropdown-divider"></li>
                <li><h6 class="dropdown-header">[[global:status]]</h6></li>
                <li>
                    <a href="#" class="dropdown-item user-status" data-status="online">
                        <i class="fa fa-fw fa-circle status online"></i><span <!-- IF user.online -->class="fw-bold"<!-- ENDIF user.online -->> [[global:online]]</span>
                    </a>
                </li>
                <li>
                    <a href="#" class="dropdown-item user-status" data-status="away">
                        <i class="fa fa-fw fa-circle status away"></i><span <!-- IF user.away -->class="fw-bold"<!-- ENDIF user.away -->> [[global:away]]</span>
                    </a>
                </li>
                <li>
                    <a href="#" class="dropdown-item user-status" data-status="dnd">
                        <i class="fa fa-fw fa-circle status dnd"></i><span <!-- IF user.dnd -->class="fw-bold"<!-- ENDIF user.dnd -->> [[global:dnd]]</span>
                    </a>
                </li>
                <li>
                    <a href="#" class="dropdown-item user-status" data-status="offline">
                        <i class="fa fa-fw fa-circle status offline"></i><span <!-- IF user.offline -->class="fw-bold"<!-- ENDIF user.offline -->> [[global:invisible]]</span>
                    </a>
                </li>
                <li role="presentation" class="dropdown-divider"></li>
                <li>
                    <a class="dropdown-item" component="header/profilelink/edit" href="{relative_path}/user/{user.userslug}/edit">
                        <i class="fa fa-fw fa-edit"></i> <span>[[user:edit-profile]]</span>
                    </a>
                </li>
                <li>
                    <a class="dropdown-item" component="header/profilelink/settings" href="{relative_path}/user/{user.userslug}/settings">
                        <i class="fa fa-fw fa-gear"></i> <span>[[user:settings]]</span>
                    </a>
                </li>
                {{{ if showModMenu }}}
                <li role="presentation" class="dropdown-divider"></li>
                <li><h6 class="dropdown-header">[[pages:moderator-tools]]</h6></li>
                <li>
                    <a class="dropdown-item" href="{relative_path}/flags">
                        <i class="fa fa-fw fa-flag"></i> <span>[[pages:flagged-content]]</span>
                    </a>
                </li>
                <li>
                    <a class="dropdown-item" href="{relative_path}/post-queue">
                        <i class="fa fa-fw fa-list-alt"></i> <span>[[pages:post-queue]]</span>
                    </a>
                </li>
                <li>
                    <a class="dropdown-item" href="{relative_path}/ip-blacklist">
                        <i class="fa fa-fw fa-ban"></i> <span>[[pages:ip-blacklist]]</span>
                    </a>
                </li>
                {{{ else }}}
                {{{ if postQueueEnabled }}}
                <li>
                    <a class="dropdown-item" href="{relative_path}/post-queue">
                        <i class="fa fa-fw fa-list-alt"></i> <span>[[pages:post-queue]]</span>
                    </a>
                </li>
                {{{ end }}}
                {{{ end }}}

                <li role="presentation" class="dropdown-divider"></li>
                <li component="user/logout">
                    <form method="post" action="{relative_path}/logout">
                        <input type="hidden" name="_csrf" value="{config.csrf_token}">
                        <input type="hidden" name="noscript" value="true">
                        <button type="submit" class="dropdown-item">
                            <i class="fa fa-fw fa-sign-out"></i><span> [[global:logout]]</span>
                        </button>
                    </form>
                </li>
            </ul>
        </li>
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