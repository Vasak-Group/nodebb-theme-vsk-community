{{{ if brand:logo }}}
    <a href="{{{ if brand:logo:url }}}{brand:logo:url}{{{ else }}}{relative_path}/{{{ end }}}" class="navbar-brand logo">
        <img src="{brand:logo}?{config.cache-buster}" alt="{brand:logo:alt}" class="{brand:logo:display}" title="{brand:logo:alt}">
    </a>
{{{ end }}}
{{{ if config.showSiteTitle }}}
    <a href="{{{ if title:url }}}{title:url}{{{ else }}}{relative_path}/{{{ end }}}" class="navbar-brand logo">
        {config.siteTitle}
    </a>
{{{ end }}}
