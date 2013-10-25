@Demo.module "ItemsApp.Show", (Show, App, Backbone, Marionette, $, _) ->
  Show.Controller =
    showItem: (name) ->
      item = App.request "item:get", name
      view = @getItemView item
      if item?
        App.headerRegion.close()
        App.execute "load:modal" , view
        App.execute "pop:modal"
      else
        App.execute "header:show"
        App.mainRegion.show view

    getItemView: (item) ->
      if item?
        new Show.Item
          model: item
      else
         new Show.NotFound