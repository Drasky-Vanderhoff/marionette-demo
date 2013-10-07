@Demo.module "ItemsApp.Show", (Show, App, Backbone, Marionette, $, _) ->

  class Show.Item extends App.Views.ItemView
    template: "items/show/templates/item"
    className: "media"

  class Show.NotFound extends App.Views.ItemView
    template: "items/show/templates/notfound"
    className: "media"
    