@Demo.module "ItemsApp.List", (List, App, Backbone, Marionette, $, _) ->
	
	List.Controller =
		
		listItems: ->
			App.request "item:entities", (items) =>
				@layout = @getLayoutView()
				@layout.on "show", =>
					@showItems items
				App.mainRegion.show @layout
		
		showItems: (items) ->
			itemsView = @getItemsView items
			@layout.itemsRegion.show itemsView
		
		getItemsView: (items) ->
			new List.Items
				collection: items
		
		getLayoutView: ->
			new List.Layout