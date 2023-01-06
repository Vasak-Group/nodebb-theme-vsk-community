<!DOCTYPE html>
<html lang="{function.localeToHTML, userLang, defaultLang}" {{{if languageDirection}}}data-dir="{languageDirection}" style="direction: {languageDirection};"{{{end}}}>
<head>
	<title>{browserTitle}</title>
	{{{each metaTags}}}{function.buildMetaTag}{{{end}}}
	<link rel="stylesheet" type="text/css" href="{relative_path}/assets/client{{{if bootswatchSkin}}}-{bootswatchSkin}{{{end}}}{{{ if (languageDirection=="rtl") }}}-rtl{{{ end }}}.css?{config.cache-buster}" />
	{{{each linkTags}}}{function.buildLinkTag}{{{end}}}

	<script>
		var config = JSON.parse('{{configJSON}}');
		var app = {
			user: JSON.parse('{{userJSON}}')
		};

		document.documentElement.style.setProperty('--panel-offset', `${localStorage.getItem('panelOffset') || 0}px`);
	</script>

	{{{if useCustomHTML}}}
	{{customHTML}}
	{{{end}}}

	{{{if useCustomCSS}}}
	<style>{{customCSS}}</style>
	{{{end}}}
</head>

<body class="{bodyClass} skin-{{{if bootswatchSkin}}}{bootswatchSkin}{{{else}}}noskin{{{end}}}">

    <!-- NOT USED -->
	<nav id="menu" class="slideout-menu hidden">
		<!-- IMPORT partials/slideout-menu.tpl -->
	</nav>
	<nav id="chats-menu" class="slideout-menu hidden">
		<!-- IMPORT partials/chats-menu.tpl -->
	</nav>
    <!-- NOT USED -->

    <section id="topbar" class="d-flex align-items-center">
        <div class="container d-flex justify-content-center justify-content-md-between">
            <div class="contact-info d-flex align-items-center">
                <em class="fa fa-envelope d-flex align-items-center"><a href="mailto:info@vasak.net.ar">info@vasak.net.ar</a></em>
            </div>
            <div class="social-links d-none d-md-flex align-items-center">
                <a href="https://web.facebook.com/vasakgroup" class="facebook"><em class="fa fa-facebook"></em></a>
                <a href="https://www.instagram.com/vasakgroup/" class="instagram"><em class="fa fa-instagram"></em></a>
                <a href="https://www.linkedin.com/company/vasakgroup/" class="linkedin"><em class="fa fa-linkedin"></em></a>
            </div>
        </div>
    </section>

    <header id="header" class="d-flex align-items-center">
        <div class="container d-flex align-items-center justify-content-between">
            <!-- IMPORT partials/logo.tpl -->
            
            <nav id="navbar" class="navbar">
                <ul>
                   <!-- IMPORT partials/base-menu.tpl -->
                </ul>
                <em class="fa fa-list mobile-nav-toggle"></em>
            </nav>
            <div class="navbar ms-auto">
                <ul>
                   <!-- IMPORT partials/user-menu.tpl -->
                </ul>
            </div>
        </div>
    </header>

	<main id="panel" class="slideout-panel">
		<nav class="navbar sticky-top navbar-expand-lg bg-light header border-bottom" id="header-menu" component="navbar">
			<div class="container justify-content-start flex-nowrap">
				<!-- IMPORT partials/menu.tpl -->
			</div>
		</nav>
		<script>
			const rect = document.getElementById('header-menu').getBoundingClientRect();
			const offset = Math.max(0, rect.bottom);
			document.documentElement.style.setProperty('--panel-offset', offset + `px`);
		</script>
		<div class="container pt-3" id="content">
		<!-- IMPORT partials/noscript/warning.tpl -->
		<!-- IMPORT partials/noscript/message.tpl -->