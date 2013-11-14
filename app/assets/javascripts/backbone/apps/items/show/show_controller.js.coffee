@Demo.module "ItemsApp.Show", (Show, App, Backbone, Marionette, $, _) ->
  Show.Controller =
    showItem: (name) ->
      item = App.request "item:get", name
      view = @getItemView item
      # animation = @getAnimationView item
      # App.animateRegion.show animation
      App.modalRegion.show view

    getItemView: (item) ->
      if item?
        new Show.Item
          model: item
      else
         new Show.NotFound

    # getAnimationView: (item) ->
    #   if item?
    #     new Show.AnimateItem
    #       model: item
    #   else
    #      new Show.NotFound
      
    