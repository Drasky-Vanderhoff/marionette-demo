@Demo.module "ItemsApp.List", (List, App, Backbone, Marionette, $, _) ->
  
  List.Controller =
    
    listItems: ->
      items = App.request "item:entities"
      layout = @getLayoutView()
      layout.on "show", =>
        @showItems items ,layout
      App.mainRegion.show layout
      App.execute "header:show"
    
    showItems: (items, layout) ->
      itemsView = @getItemsView items
      layout.itemsRegion.show itemsView
    
    getItemsView: (items) ->
      new List.Items
        collection: items
    
    getLayoutView: ->
      new List.Layout