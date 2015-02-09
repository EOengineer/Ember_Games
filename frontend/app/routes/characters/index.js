import Ember from 'ember';

export default Ember.Route.extend({
  model: function() {
    // return this.store.find('character');
    return  this.modelFor('project').get('characters');
  }
});
