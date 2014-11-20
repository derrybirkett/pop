Shots = new Meteor.Collection(null)

Template.dribbbleShots.rendered = ->
  shots = Meteor.call 'loadDribbbleShots', this.data.account.dribbble.username, (error,results) ->
    console.log(results.data)
    Shots.insert shot for shot in results.data

Template.dribbbleShots.helpers
  shots: ->
    Shots.find()
