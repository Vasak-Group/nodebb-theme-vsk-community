
			</div><!-- /.container#content -->
		</main>
		<!-- IMPORT partials/sidebar-right.tpl -->
	</div>
	<!-- IMPORT partials/mobile-footer.tpl -->
	{{{ if !isSpider }}}
	<div class="row">
		<div component="toaster/tray" class="col-12 col-md-3 alert-window fixed-bottom pb-3 mb-5 mb-md-2 me-md-5 ms-auto">
			<div id="reconnect-alert" class="alert alert-dismissible alert-warning clearfix hide" component="toaster/toast">
				<button type="button" class="btn-close float-end" data-bs-dismiss="alert" aria-hidden="true"></button>
				<p>[[global:reconnecting-message, {config.siteTitle}]]</p>
			</div>
		</div>
	</div>
	{{{ end }}}

	<script src="https://cdn.jsdelivr.net/npm/@srexi/purecounterjs/dist/purecounter_vanilla.js" type="text/javascript"></script>
	<script src="https://unpkg.com/aos@next/dist/aos.js" type="text/javascript"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/gh/mcstudios/glightbox/dist/js/glightbox.min.js" type="text/javascript"></script>
	<script src="https://unpkg.com/isotope-layout@3/dist/isotope.pkgd.min.js" type="text/javascript"></script>
	<script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js" type="text/javascript"></script>
	<script src="https://vasak.net.ar/js/noframework.waypoints.min.js" type="text/javascript"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/tiny-slider/2.9.2/min/tiny-slider.js" type="text/javascript"></script>
	<script type="module" src="https://vasak.net.ar/js/main.js"></script>
	<!-- IMPORT partials/footer/js.tpl -->
</body>
</html>
