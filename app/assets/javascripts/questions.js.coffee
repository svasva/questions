# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$(document).ready ->
	$.alertmsg = (message, klass = 'info') ->
		msg = $("<div class='alert-message fade in #{klass}'>")
			.html(message)
		msg.prependTo $('body')
		msg.hide()
		msg.slideDown()
		setTimeout("$('.alert-message').slideUp()", 1000)