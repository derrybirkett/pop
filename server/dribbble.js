/* Dribbble Credentials */
var dribbbleAPI = {
  config: {
    id: "e5205eb747bc768accae8ae21748cabf07d5b490b03f69f31cd2cb7c947e52be",
    secret: "0c1ac3f316d375eb3ae0ecab72e46d86bcf996faae198a838f7fa5da73803e63",
    accessToken: "41ffc78c5c433876396c23293e8dacfe17ab66900c01142f226ef400231a18e7"
  }
}

/* Dribbble meteor methods */
Meteor.methods({

  loadDribbbleShots: function() {
    var dribbbler = Meteor.user();
    if (dribbbler.account.dribbble.username) {
      this.unblock();
      return Meteor.http.call('GET', 'https://api.dribbble.com/v1/users/' + dribbbler.account.dribbble.username + '/shots', {
        headers: { 'Authorization': 'Bearer ' + dribbbleAPI.config.accessToken }
      });
    }
  }

});
