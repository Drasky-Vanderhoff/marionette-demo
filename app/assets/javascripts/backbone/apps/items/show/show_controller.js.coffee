@Demo.module "ItemsApp.Show", (Show, App, Backbone, Marionette, $, _) ->
  Show.Controller =
    showItem: (name) ->
      item = App.request "item:get", name
      if item?
        App.headerRegion.close()
      else
        App.execute "header:show"
      view = @getItemView item
      App.mainRegion.show view

    getItemView: (item) ->
      if item?
        new Show.Item
          model: item
      else
         new Show.NotFound