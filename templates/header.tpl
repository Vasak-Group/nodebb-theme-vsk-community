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

	<div class="preloader">
        <div class="preloader-inner">
            <div class="preloader-icon">
                <span></span>
                <span></span>
            </div>
        </div>
    </div>

    <section id="topbar" class="d-flex align-items-center">
        <div class="container-fluid d-flex justify-content-center justify-content-md-between">
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

    <nav id="header" class="navbar navbar-expand-lg d-flex align-items-center">
        <div class="container-fluid d-flex align-items-center justify-content-between">
            <!-- IMPORT partials/logo.tpl -->
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#vskNavBar"
				aria-controls="vskNavBar" aria-expanded="false" aria-label="Toggle navigation">
				<em class="fa fa-list mobile-nav-toggle"></em>
			</button>
            <div class="collapse navbar-collapse" id="vskNavBar">
				<ul class="navbar-nav ms-auto me-auto">
				<!-- IMPORT partials/base-menu.tpl -->
				</ul>
				<ul class="navbar-nav ms-auto">
				<!-- IMPORT partials/user-menu.tpl -->
				</ul>
			</div>
        </div>
    </nav>

	<main id="panel" class="slideout-panel">
		<div class="container pt-3" id="content">