@Demo.module "LeadsApp.List", (List, App, Backbone, Marionette, $, _) ->

  List.Controller = 

    listLeads: ->
      leadsView = @getLeadsView()

      App.mainRegion.show leadsView
      
    getLeadsView: ->
      new List.Leads
