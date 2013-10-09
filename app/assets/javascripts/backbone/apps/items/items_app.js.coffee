@Demo.module "ItemsApp", (ItemsApp, App, Backbone, Marionette, $, _) ->
  
  class ItemsApp.Router extends Marionette.AppRouter
    appRoutes:
      "": "listItems"
      "view/:name": "showItem"
      "edit/:name": "editItem"
  
  API =
    listItems: ->
      ItemsApp.List.Controller.listItems()
  
    showItem: (name) ->
      ItemsApp.Show.Controller.showItem name
    
    editItem: (name) ->
      ItemsApp.Edit.Controller.editItem name
  
  App.addInitializer ->
    new ItemsApp.Router
      controller: API