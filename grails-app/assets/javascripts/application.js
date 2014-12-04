// This is a manifest file that'll be compiled into application.js.
//
// Any JavaScript file within this directory can be referenced here using a relative path.
//
// You're free to add application-wide JavaScript to this file, but it's generally better 
// to create separate JavaScript files as needed.
//
//= require jquery
//= require bootstrap.min
//= require jquery.flexslider-min
//= require jquery.nav
//= require jquery.appear
//= require jquery.plugin
//= require jquery.countdown
//= require waypoints.min
//= require waypoints-sticky.min
//= require jquery.validate
//= require headhesive.min
//= require toastr.min
//= require scripts
//= require_tree .
//= require_self

if (typeof jQuery !== 'undefined') {
	(function($) {
		$('#spinner').ajaxStart(function() {
			$(this).fadeIn();
		}).ajaxStop(function() {
			$(this).fadeOut();
		});
	})(jQuery);
}
