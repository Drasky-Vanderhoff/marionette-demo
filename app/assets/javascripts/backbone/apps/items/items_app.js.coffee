@Demo.module "ItemsApp", (ItemsApp, App, Backbone, Marionette, $, _) ->
  
  class ItemsApp.Router extends Marionette.AppRouter
    appRoutes:
      "":"listItems"
      "view/:name": "showItem"
      "edit/:name": "editItem"
  
  # Here there is a code smell, find a better place to put the close modal
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

  ItemsApp.on "start", ->
    API.listItems()