class MedusaGui.Models.Job extends Backbone.Model
  paramRoot: 'job'

  defaults:
    jobuuid: null
    jobtype: null
    directory: null
    sipuuid: null
    currentstep: null
    hidden: null
  
class MedusaGui.Collections.JobsCollection extends Backbone.Collection
  model: MedusaGui.Models.Job
  url: '/jobs'