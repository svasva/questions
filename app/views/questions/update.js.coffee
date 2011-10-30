if <%= @question.valid? %>
	$('.question#q<%= @question.id %>').fadeOut()
	$('<%= escape_javascript(render(:partial => @question))%>')
	  .prependTo('#closed_questions')
	  .hide()
	  .fadeIn()
else
	errors = "<%= @question.errors.full_messages.join(',') %>"
	msg = $('<div class="alert-message error fade in">')
		.html("<a class='close' href='#'>×</a> Error posting question: #{errors}")
	msg.appendTo $('.page-header')
	msg.alert()
	msg.fadeIn()