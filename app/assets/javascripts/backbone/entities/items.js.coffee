@Demo.module "Entities", (Entities, App, Backbone, Marionette, $, _) ->
	
	class Entities.Item extends Entities.Model
	
	class Entities.ItemsCollection extends Entities.Collection
		model: Entities.Item
		url: -> 
			"/items"
	
	API =
		
		getUserEntities: (cb) ->
			items = new Entities.ItemsCollection
			items.fetch
				success: ->
					cb items
	
	App.reqres.setHandler "item:entities", (cb) ->
		API.getItem	Entities cb