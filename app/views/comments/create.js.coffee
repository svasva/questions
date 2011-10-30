if <%= @comment.valid? %>
	$('.question#q<%= @comment.question_id%>').find('ul').append(
		$('<li>')
			.html('<%= escape_javascript(@comment.body) %>')
			.hide()
			.fadeIn()
	)
	$('.new_comment#c<%= @comment.question_id %>')[0].reset()
else
	errors = "<%= @comment.errors.full_messages.join(',') %>"
	msg = $('<div class="alert-message error fade in">')
		.html("<a class='close' href='#'>×</a> Error posting question: #{errors}")
	msg.appendTo $('.page-header')
	msg.alert()
	msg.fadeIn()