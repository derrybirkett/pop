/* Create local collection container */
Shots = new Meteor.Collection(null);

/* Pull down shots and load into container */
var shots = Meteor.call('loadDribbbleShots', function(error,results) {
  console.log(results.data);
  for(i=0;i<results.data.length;i++) {
    var shot_id = Shots.insert(results.data[i]);
  }
});

/* Push collection to template */
Template.dribbbleShots.helpers({
  shots: function() {
    return Shots.find();
  }
});
