'use strict';

/*
	Hey there!

	This is the client file for your theme. If you need to do any client-side work in javascript,
	this is where it needs to go.

	You can listen for page changes by writing something like this:

	  $(window).on('action:ajaxify.end', function(ev, data) {
		var url = data.url;
		console.log('I am now at: ' + url);
	  });
*/

$(document).ready(function () {
	// Your code goes here

	/**
   * Header fixed top on scroll
   */
	let selectHeader = select('#header');
	if (selectHeader) {
		let headerOffset = selectHeader.offsetTop;
		let nextElement = selectHeader.nextElementSibling;
		const headerFixed = () => {
			if ((headerOffset - window.scrollY) <= 0) {
				selectHeader.classList.add('fixed-top');
				nextElement.classList.add('scrolled-offset');
			} else {
				selectHeader.classList.remove('fixed-top');
				nextElement.classList.remove('scrolled-offset');
			}
		};
		window.addEventListener('load', headerFixed);
		onscroll(document, headerFixed);
	}

	/**
   * Back to top button
   */
	let backtotop = select('.back-to-top');
	if (backtotop) {
		const toggleBacktotop = () => {
			if (window.scrollY > 100) {
				backtotop.classList.add('active');
			} else {
				backtotop.classList.remove('active');
			}
		};
		window.addEventListener('load', toggleBacktotop);
		onscroll(document, toggleBacktotop);
	}

	/**
   * Mobile nav toggle
   */
	on('click', '.mobile-nav-toggle', function (e) {
		select('#navbar').classList.toggle('navbar-mobile');
		this.classList.toggle('bi-list');
		this.classList.toggle('bi-x');
	});

	/**
   * Mobile nav dropdowns activate
   */
	on('click', '.navbar .dropdown > a', function (e) {
		if (select('#navbar').classList.contains('navbar-mobile')) {
			e.preventDefault();
			this.nextElementSibling.classList.toggle('dropdown-active');
		}
	}, true);
	
	/**
   * Scroll with ofset on page load with hash links in the url
   */
	window.addEventListener('load', () => {
		if (window.location.hash) {
			if (select(window.location.hash)) {
				scrollto(window.location.hash);
			}
		}
	});

	/**
   * Preloader
   */
	let preloader = select('#preloader');
	if (preloader) {
		window.addEventListener('load', () => {
			preloader.remove();
		});
	}
});
