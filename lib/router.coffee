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
    Meteor.users.find()
