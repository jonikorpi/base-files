//= require_tree .

$ ->

  # Fastclick with tappy.js
  # $(document).on "tap", "a[href]:not(.in-page-link):not([href^='#'])", ->
  #   href = $(this).attr("href")
  #   if href.indexOf("#") isnt 0 && !$(this).hasClass("in-page-link")
  #   window.location.href = @href
  # $("a").each ->
  #   href = $(this).attr("href")
  #   if href.indexOf("#") isnt 0 && !$(this).hasClass("in-page-link")
  #     $(this).bind "tap", ->
  #       window.location.href = @href

  # Smooth scrolling to targets
  # scrollTime = 414
  # scrollElement = "html,body"
  # $(".in-page-link").on "tap", (event) ->
  #   event.preventDefault()
  #   $this = $(this)
  #   target = @hash
  #   $target = $(target)
  #   $(scrollElement).stop().animate
  #     scrollTop: $target.offset().top
  #   , scrollTime, "swing", ->
  #     #window.location.hash = target
