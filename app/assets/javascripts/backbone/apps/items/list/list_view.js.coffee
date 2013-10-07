@Demo.module "ItemsApp.List", (List, App, Backbone, Marionette, $, _) ->
	
	class List.Layout extends App.Views.Layout
		template: "items/list/templates/list_layout"
		regions:
			itemsRegion: "#items-region"

	class List.Item extends App.Views.ItemView
		template: "items/list/templates/_item"
		tagName: "li"
		className: "media"
	
	class List.Empty extends App.Views.ItemView
		template: "items/list/templates/_empty"
		tagName: "li"
		className: "media"
	
	class List.Items extends App.Views.CompositeView
		template: "items/list/templates/_items"
		itemView: List.Item
		emptyView: List.Empty
		itemViewContainer: "ul"

