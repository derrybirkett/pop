Template.dribbble.events
  'submit form': (e) ->
    e.preventDefault()

    accountUpdates =
      dribbble:
        username: $(e.target).find('[name=username]').val()

    Meteor.call 'updateAccount', accountUpdates, (error,id) ->
      if error
        console.log(error)
      else
        Session.set('dribbbler', accountUpdates.dribbble.username)
        console.log(Session.get('dribbbler'))

Template.dribbble.helpers
  dribbbler: ->
    Session.get('dribbbler')
