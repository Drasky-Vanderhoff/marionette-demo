@Demo.module "ItemsApp.List", (List, App, Backbone, Marionette, $, _) ->
	
	class List.Layout extends App.Views.Layout
		template: "users/list/templates/list_layout"
		regions:
			itemsRegion: "#items-region"
	class List.Item extends App.Views.ItemView
		template: "items/list/templates/_user"
		tagName: "li"
	
	class List.Empty extends App.Views.ItemView
		template: "items/list/templates/_empty"
		tagName: "li"
	
	class List.Items extends App.Views.CompositeView
		template: "items/list/templates/_users"
		itemView: List.User
		emptyView: List.Empty
		itemViewContainer: "ul"