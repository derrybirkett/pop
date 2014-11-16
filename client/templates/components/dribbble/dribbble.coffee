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
        console.log(id)
