MedusaApp.Routers.Tasks = Backbone.Router.extend({
  routes: {
    "": "index"
  },

  index: function() {
    new MedusaApp.Views.TasksIndex();
  }
});
