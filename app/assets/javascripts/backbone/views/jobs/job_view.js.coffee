MedusaGui.Views.Jobs ||= {}

class MedusaGui.Views.Jobs.JobView extends Backbone.View
  template: JST["backbone/templates/jobs/job"]
  
  events:
    "click .destroy" : "destroy"
      
  tagName: "tr"
  
  destroy: () ->
    @options.model.destroy()
    this.remove()
    
    return false
    
  render: ->
    $(this.el).html(this.template(this.options.model.toJSON() ))    
    return this