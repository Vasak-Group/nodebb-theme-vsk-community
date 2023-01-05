<div id="{alert_id}" role="alert" class="alert alert-dismissible alert-{type}" component="toaster/toast">
	<div class="toast-header">
		{{{ if image }}}
			<img src="{image}" class="rounded me-2" alt="toast-img" />
		{{{ end }}}
		{{{ if title }}}
			<strong class="me-auto">{title}</strong>
		{{{ end }}}
		<button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
	</div>

	{{{ if message }}}
		<div class="toast-body">{message}</div>
	{{{ end }}}
</div>
