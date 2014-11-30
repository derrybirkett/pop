Template.layout.events
  "click .usher": (e,t) ->
      e.preventDefault()
      console.log 'Clicked'
      $('#ui').toggleClass('active')
