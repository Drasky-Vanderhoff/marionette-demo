@Demo.module "LeadsApp", (LeadsApp, App, Backbone, Marionette, $, _) ->
	
	class LeadsApp.Router extends Marionette.AppRouter
		appRoutes:
			"leads" : "listLeads"
		
		API =
			listLeads: ->
				LeadsApp.List.Controller.listLeads()
		
		App.addInitializer ->
			new LeadsApp.Router
				controller: API