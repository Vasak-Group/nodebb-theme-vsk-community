
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

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous">
	</script>
	<!-- IMPORT partials/footer/js.tpl -->
</body>
</html>
