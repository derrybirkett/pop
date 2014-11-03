Template.basicProfile.helpers
    user: ->
        Meteor.users.findOne(Meteor.userId())
