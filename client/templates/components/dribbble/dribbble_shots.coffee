Shots = new Meteor.Collection(null)

shots = Meteor.call 'loadDribbbleShots', (error,results) ->
  console.log(results.data)
  Shots.insert shot for shot in results.data

Template.dribbbleShots.helpers
  shots: ->
    Shots.find()
