@Demo.module "ItemsApp", (ItemsApp, App, Backbone, Marionette, $, _) ->
  
  class ItemsApp.Router extends Marionette.AppRouter
    appRoutes:
      "": "listItems"
      "view/:name": "showItem"
      "edit/:name": "editItem"
  
  # Here there is a code smell, find a better place to put the close modal
  API =
    closeCurrentItem: ->
      App.execute "close:modal"
  
    listItems: ->
      @closeCurrentItem()
      ItemsApp.List.Controller.listItems()
  
    showItem: (name) ->
      @closeCurrentItem()
      ItemsApp.Show.Controller.showItem name
    
    editItem: (name) ->
      @closeCurrentItem()
      ItemsApp.Edit.Controller.editItem name

  App.addInitializer ->
    new ItemsApp.Router
      controller: API