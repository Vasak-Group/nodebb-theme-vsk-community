{{{each navigation}}}
<!-- IF function.displayMenuItem, @index -->
<li class="nav-link" title="{navigation.title}">
    <a class="{{{ if navigation.dropdown }}}dd-menu collapsed{{{ end }}}"
        {{{ if navigation.dropdown }}} href="javascript:void(0)" role="button" data-bs-toggle="dropdown" aria-haspopup="true"
        aria-expanded="false" {{{ else }}} href="{navigation.route}" {{{ end }}}
        {{{ if navigation.id }}}id="{navigation.id}" {{{ end }}}{{{ if navigation.targetBlank }}} target="_blank"
        {{{ end }}}>

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
    <ul class="sub-menu collapse">
        {navigation.dropdownContent}
    </ul>
    {{{ end }}}
</li>
<!-- ENDIF function.displayMenuItem -->
{{{end}}}