@Demo.module "ItemsApp.List", (List, App, Backbone, Marionette, $, _) ->
	
	class List.Layout extends App.Views.Layout
		template: "items/list/templates/list_layout"
		regions:
			thumbsRegion: "#thumbs-region"
			itemsRegion: "#items-region"
		className:"container"

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

	class List.Thumb extends App.Views.ItemView
		template: "items/list/templates/_thumb"
		tagName: "li"
		className: "media panel-body drag-drop"

	class List.Thumbs extends App.Views.CompositeView
		template: "items/list/templates/_thumbs"
		itemView: List.Thumb
		emptyView: List.Empty
		itemViewContainer: "ul"

