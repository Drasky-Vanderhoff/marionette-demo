@Demo.module "ItemsApp.Show", (Show, App, Backbone, Marionette, $, _) ->
  Show.Controller =
    showItem: (name) ->
      item = App.request "item:get", name
      view = @getItemView item
      App.mainRegion.show view

    getItemView: (item) ->
      new Show.Item
        model: item