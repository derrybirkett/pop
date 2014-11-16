if dribbbleActive = Meteor.users.findOne({ _id: Meteor.userId() }, {'account.dribbble.username':{$exists:true}})


  console.log(dribbbleActive);

  Shots = new Meteor.Collection(null)

  shots = Meteor.call 'loadDribbbleShots', (error,results) ->
    console.log(results.data)
    Shots.insert shot for shot in results.data

  Template.dribbbleShots.helpers
    shots: ->
      Shots.find()
