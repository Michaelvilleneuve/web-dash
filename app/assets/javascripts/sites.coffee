# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
Site = 
	init: ->
		$.ajaxSetup
			cache: false
			timeout: 5000
		@verifyUrl()

	verifyUrl: ->
		$(".site").each ->
			checker = $(this).data('checker')
			el = $(this)
			$.get($(this).data("url"), (data) ->
				if(data.responseText.indexOf(checker) > -1)
					el.html('OK')
					el.parent('tr').addClass('ok')
				else
					el.html('NOT GOOD')
					el.parent('tr').addClass('ko')
				).fail ->
					el.html('NOT GOOD')
					el.parent('tr').addClass('ko')




$(document).ready ->
	Site.init()