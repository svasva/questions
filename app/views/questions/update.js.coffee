if <%= @question.valid? %>
	$('.question#q<%= @question.id %>').fadeOut()
	$('<%= escape_javascript(render(:partial => @question))%>')
	  .prependTo('#closed_questions')
	  .hide()
	  .fadeIn()
	$.alertmsg("Answer posted successfully!", 'success')
else
	errors = "<%= @question.errors.full_messages.join(',') %>"
	$.alertmsg("Error updating question: #{errors}", 'error')