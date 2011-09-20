MedusaApp.Views.TasksIndex = Backbone.View.extend({
  initialize: function() {
    this.render();
  },

  render: function () {
    $(this.el).html(JST['tasks/index']({ tasks: MedusaApp.tasks }));

    var tasksIndexView = this;
    MedusaApp.tasks.each(function(task) {
      var taskView = new MedusaApp.Views.TaskView({model: task});
      tasksIndexView.$('table').append(taskView.render().el);
    });

    $('body').html(this.el);

    return this;
  }
});
