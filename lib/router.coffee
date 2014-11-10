Router.configure
  layoutTemplate: 'layout',
  loadingTemplate: 'loading'
  waitOn: ->
        Meteor.subscribe('users')

Router.route '/',
  name:'home'

Router.route '/directory',
  name: 'directory'
  data: ->
    user: ->
        Meteor.users.find()

Router.route '/profile/:_id',
    name: 'profile',
    data: ->
        Meteor.users.findOne(this.params._id)
