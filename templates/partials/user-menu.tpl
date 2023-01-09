{{{ if config.loggedIn }}}
    <li><button type="button" class="navbar-toggler border-0" id="mobile-chats">
        <span component="notifications/icon" class="notification-icon fa fa-fw fa-bell-o unread-count"
            data-content="{unreadCount.notification}"></span>
        <span component="chat/icon" class="notification-icon fa fa-fw fa-comments unread-count"
            data-content="{unreadCount.chat}"></span>
        {buildAvatar(user, "32px", true)}
    </button></li>
{{{ end }}}

{{{each navigation}}}
    <!-- IF function.displayMenuItem, @index -->
    <li class="nav-item {navigation.class}{{{ if navigation.dropdown }}} dropdown{{{ end }}}" title="{navigation.title}">
        <a class="nav-link navigation-link {{{ if navigation.dropdown }}}dropdown-toggle{{{ end }}}"
            {{{ if navigation.dropdown }}} href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true"
            aria-expanded="false" {{{ else }}} href="{navigation.route}" {{{ end }}}
            {{{ if navigation.id }}}id="{navigation.id}" {{{ end }}}
            {{{ if navigation.targetBlank }}} target="_blank"{{{ end }}}>

            {{{ if navigation.iconClass }}}
                <i class="fa fa-fw {navigation.iconClass}" data-content="{navigation.content}"></i>
            {{{ end }}}

            {{{ if navigation.text }}}
                <span class="{navigation.textClass}">{navigation.text}</span>
            {{{ end }}}

            {{{ if navigation.dropdown}}}
                <i class="fa fa-caret-down"></i>
            {{{ end }}}
        </a>
        {{{ if navigation.dropdown }}}
            <ul class="dropdown-menu">
                {navigation.dropdownContent}
            </ul>
        {{{ end }}}
    </li>
    <!-- ENDIF function.displayMenuItem -->
{{{end}}}

<li>
    <a href="#" id="reconnect" class="nav-link hide" title="[[global:reconnecting-message, {config.siteTitle}]]">
        <i class="fa fa-check"></i>
    </a>
</li>