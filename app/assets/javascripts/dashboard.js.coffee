$('.tab-links').on 'click', (e) ->
  e.stopPropagation()
  e.preventDefault()

  $('.tab, .form-wrapper').removeClass('active')
  $(this).parent().addClass('active')
  $('.' + $(this).data('tab')).addClass('active')
