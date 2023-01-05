'use strict';

define('admin/plugins/vsk-community', ['settings'], function (Settings) {
	var ACP = {};

	ACP.init = function () {
		Settings.load('vsk-community', $('.vsk-community-settings'));

		$('#save').on('click', function () {
			Settings.save('vsk-community', $('.vsk-community-settings'));
		});
	};

	return ACP;
});
