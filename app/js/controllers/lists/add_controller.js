// TODO: move this to ListsController

Movies.ListsAddController = Ember.ArrayController.extend({
  createList: function () {
    // Get the list title set by the "New Todo" text field
    var title = this.get('newList');
    if (!title.trim()) { return; }

    // Create the new List model
    var list = Movies.List.createRecord({
      title: title
    });


    // // Clear the "New List" text field
    this.set('newList', '');

    // // Save the new model
    list.save();
  }
});
