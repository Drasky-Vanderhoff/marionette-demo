@Demo.module "ItemsApp", (ItemsApp, App, Backbone, Marionette, $, _) ->
  
  class ItemsApp.Router extends Marionette.AppRouter
    appRoutes:
      "": "listItems"
      "view/:name": "showItem"
      "view/:name": "showItem"
  
  API =
    listItems: ->
      ItemsApp.List.Controller.listItems()
  
    showItem: (name) ->
      ItemsApp.Show.Controller.showItem name
  
  App.addInitializer ->
    new ItemsApp.Router
      controller: API