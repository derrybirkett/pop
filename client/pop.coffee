Template.profile.helpers
  user: ->
      Meteor.users.findOne(Meteor.userId())
