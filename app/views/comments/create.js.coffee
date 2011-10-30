if <%= @comment.valid? %>
	$('.question#q<%= @comment.question_id%>').find('ul').append(
		$('<li>')
			.html('<%= escape_javascript(@comment.body) %>')
			.hide()
			.fadeIn()
	)
	$('.new_comment#c<%= @comment.question_id %>')[0].reset()
	$.alertmsg("Comment posted successfully!", 'success')
else
	errors = "<%= @comment.errors.full_messages.join(',') %>"
	$.alertmsg("Error posting comment: #{errors}", 'error')