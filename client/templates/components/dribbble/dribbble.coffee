Shots = new Meteor.Collection(null)

Template.dribbble.events
  'submit form': (e) ->
    e.preventDefault()

    accountUpdates =
      dribbble:
        username: $(e.target).find('[name=username]').val()

    Meteor.call 'updateAccount', accountUpdates, (error,id) ->
      if error
        console.log(error)

Template.dribbbleShots.rendered = ->
  shots = Meteor.call 'loadDribbbleShots', this.data.account.dribbble.username, (error,results) ->
    console.log(results.data)
    Shots.insert shot for shot in results.data

Template.dribbbleShots.helpers
  shots: ->
    Shots.find()
