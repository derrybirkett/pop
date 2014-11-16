Template.dribbble.events
  'submit form': (e) ->
    e.preventDefault()

    accountUpdates =
      dribbble: $(e.target).find('[username=username]').val()

    Meteor.call 'updateAccount', accountUpdates, (error,id) ->
      if error
        console.log('error')
