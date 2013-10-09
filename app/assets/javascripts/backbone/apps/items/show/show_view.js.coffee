@Demo.module "ItemsApp.Show", (Show, App, Backbone, Marionette, $, _) ->

  class Show.Item extends App.Views.ItemView
    template: "items/show/templates/item"
    onShow: ->
      $("#slides").slidesjs
        play:
          active: true
          interval: 4000
          swap: false
        pagination:
          active: false
          

  class Show.NotFound extends App.Views.ItemView
    template: "items/show/templates/notfound"
    className: "media"
    