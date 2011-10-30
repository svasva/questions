if <%= @question.valid? %>
	$('<%= escape_javascript(render(:partial => @question))%>')
	  .prependTo('#open_questions')
	  .hide()
	  .fadeIn()

	$('#new_question')[0].reset()
else
	errors = "<%= @question.errors.full_messages.join(',') %>"
	msg = $('<div class="alert-message error fade in">')
		.html("<a class='close' href='#'>×</a> Error posting question: #{errors}")
	msg.appendTo $('.page-header')
	msg.alert()
	msg.fadeIn()