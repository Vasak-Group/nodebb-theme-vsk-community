<!DOCTYPE html>
<html lang="{function.localeToHTML, userLang, defaultLang}" {{{if languageDirection}}}data-dir="{languageDirection}" style="direction: {languageDirection};"{{{end}}}>
<head>
	<title>{browserTitle}</title>
	<meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
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

	<link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous" />
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/glightbox/dist/css/glightbox.min.css" />
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tiny-slider/2.9.4/tiny-slider.css" />
	<link href="https://vasak.net.ar/css/variables.css" rel="stylesheet">
	<link href="https://vasak.net.ar/css/style.css" rel="stylesheet" />
	{{{if useCustomCSS}}}
	<style>{{customCSS}}</style>
	{{{end}}}
</head>

<body class="{bodyClass} skin-{{{if bootswatchSkin}}}{bootswatchSkin}{{{else}}}noskin{{{end}}}">
	<div class="d-flex justify-content-between pb-4 pb-md-0">
		<!-- IMPORT partials/sidebar-left.tpl -->

		<main id="panel" class="d-flex flex-column gap-3 flex-grow-1 mt-3">
			{{{ if (brand:logo || config.showSiteTitle)}}}
			<div class="container">
				<div class="col-12 d-flex border-bottom pb-3">
					<div component="brand/wrapper" class="d-flex align-items-center gap-3 p-2 rounded-1 align-content-stretch">
						{{{ if brand:logo }}}
						<a component="brand/anchor" href="{{{ if brand:logo:url }}}{brand:logo:url}{{{ else }}}{relative_path}/{{{ end }}}">
							<img component="brand/logo" alt="{brand:logo:alt}" class="{brand:logo:display}" src="{brand:logo}?{config.cache-buster}" />
						</a>
						{{{ end }}}

						{{{ if config.showSiteTitle }}}
						<a component="siteTitle" class="text-truncate align-self-stretch align-items-center d-flex" href="{{{ if title:url }}}{title:url}{{{ else }}}{relative_path}/{{{ end }}}">
							<h1 class="fs-6 fw-bold text-body mb-0">{config.siteTitle}</h1>
						</a>
						{{{ end }}}
					</div>
				</div>
			</div>
			{{{ end }}}
			<script>
				const headerEl = document.getElementById('header-menu');
				if (headerEl) {
					const rect = headerEl.getBoundingClientRect();
					const offset = Math.max(0, rect.bottom);
					document.documentElement.style.setProperty('--panel-offset', offset + `px`);
				}
			</script>
			<div class="container d-flex flex-column gap-2" id="content">
			<!-- IMPORT partials/noscript/warning.tpl -->
			<!-- IMPORT partials/noscript/message.tpl -->
