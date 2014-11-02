Template.usercardMini.helpers
  user: ->
    Meteor.users.findOne(Meteor.userId())
