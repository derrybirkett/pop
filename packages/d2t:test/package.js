Package.describe({
  name: 'd2t:test',
  summary: ' /* Fill me in! */ ',
  version: '1.0.0',
  git: ' /* Fill me in! */ '
});

Package.onUse(function(api) {
  api.versionsFrom('1.0');
  api.use(['templating','coffeescript','mquandalle:jade'],['client','server']);
  api.addFiles(['test.jade','test.coffee'], 'client');
});
