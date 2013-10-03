@Demo.module "ItemsApp", (ItemsApp, App, Backbone, Marionette, $, _) ->
	
	class ItemsApp.Router extends Marionette.AppRouter
		appRoutes:
			"/"	: "listItems"
	
	API =
		listItems: ->
			ItemsApp.List.Controller.listItems()
	
	App.addInitializer ->
		new ItemsApp.Router
			controller: API