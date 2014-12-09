Template.layout.events
  'click .usher': (event) ->
    event.preventDefault()
    target = $(event.target).attr "data-target"
    $(target).toggleClass 'active'

  'click .toggle': (event) ->
    event.preventDefault()
    target = $(event.target).attr "data-target"
    console.log("cliekd"+target)
    $(target).fadeToggle(500)
