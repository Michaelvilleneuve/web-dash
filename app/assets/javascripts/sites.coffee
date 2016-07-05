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
					el.parent('tr').addClass('ok')
				else
					el.parent('tr').addClass('ko')
					alert(el.data("url") + " ne fonctionne pas")
				).fail ->
					el.parent('tr').addClass('ko')
					alert(el.data("url") + " ne fonctionne pas")




$(document).ready ->
	Site.init()