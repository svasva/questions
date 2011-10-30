if <%= @question.valid?(:create) %>
	$('<%= escape_javascript(render(:partial => @question))%>')
	  .prependTo('#open_questions')
	  .hide()
	  .fadeIn()

	$('#new_question')[0].reset()
	$.alertmsg("Question posted successfully!", 'success')
else
	errors = "<%= @question.errors.full_messages.join(',') %>"
	$.alertmsg("Error posting question: #{errors}", 'error')