var MedusaApp = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  init: function(tasks) {
      new MedusaApp.Routers.Tasks();
      this.tasks = new MedusaApp.Collections.Tasks(tasks);
      Backbone.history.start();
    }
};

