@Demo.module "ItemsApp.Edit", (Edit, App, Backbone, Marionette, $, _) ->
  Edit.Controller =
    editItem: (name) ->
      item = App.request "item:get", name
      view = @getItemView item
      if item?
        layout = @getLayoutView()
        layout.on "show", =>
          @showItem item ,layout
        App.modalRegion.show layout
      else
        App.modalRegion.show item

    getLayoutView: ->
      new Edit.Layout

    showItem: (item, layout) ->
      itemView = @getItemView item
      layout.mainviewRegion.show itemView

    getItemView: (item) ->
      if item?
        new Edit.Item
          model: item
      else
         new Edit.NotFound