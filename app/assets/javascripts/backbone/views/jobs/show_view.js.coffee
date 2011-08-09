MedusaGui.Views.Jobs ||= {}

class MedusaGui.Views.Jobs.ShowView extends Backbone.View
  template: JST["backbone/templates/jobs/show"]
   
  render: ->
    $(this.el).html(this.template(this.options.model.toJSON() ))
    return this