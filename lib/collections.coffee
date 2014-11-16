Meteor.methods
  updateAccount: (data) ->
    accountUpdate = Meteor.users.update { _id: Meteor.userId() },
        { $set: { 'account': data } }
