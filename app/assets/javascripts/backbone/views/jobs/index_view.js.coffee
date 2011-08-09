MedusaGui.Views.Jobs ||= {}

class MedusaGui.Views.Jobs.IndexView extends Backbone.View
  template: JST["backbone/templates/jobs/index"]
    
  initialize: () ->
    _.bindAll(this, 'addOne', 'addAll', 'render');
    
    @options.jobs.bind('reset', this.addAll);
   
  addAll: () ->
    @options.jobs.each(this.addOne)
  
  addOne: (job) ->
    view = new MedusaGui.Views.Jobs.JobView({model : job})
    this.$("tbody").append(view.render().el)
       
  render: ->
    $(this.el).html(this.template(jobs: this.options.jobs.toJSON() ))
    @addAll()
    
    return this