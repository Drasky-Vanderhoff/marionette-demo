@Demo.module "ItemsApp.Show", (Show, App, Backbone, Marionette, $, _) ->

  # class Show.AnimateItem extends App.Views.ItemView
  #   template: "items/show/templates/animateitem"
  #   onShow: ->
  #     left = $(".media-object:first").position().left
  #     top = $(".media-object:first").position().top
  #     width = $(".media-object:first").width()
  #     height = $(".media-object:first").height()
  #     contwidth = $(".container.pull-left:first").width()
  #     contheight = $(".container.pull-left:first").height()
  #     console.log  "#{left}:#{top}:#{contwidth}:#{height}"
  #     oldPos = $(".media-object:first").position()
  #     console.log $(".media-object:first").position() 
  #     $(".media-object:first").css "left", oldPos.left
  #     $(".media-object:first").css "top", oldPos.top
  #     $(".media-object:first").css "position", "absolute"
  #     $(".media-object:first").animate
  #       left: '2%'
  #       top: '2%'
  #     , 500, ->
  #       $(".media-object:first").animate
  #         width: '96%'
  #         height: '96%'
  #       , 300, ->
  #         $("#modal").show()

  class Show.Item extends App.Views.ItemView
    template: "items/show/templates/item"

  class Show.NotFound extends App.Views.ItemView
    template: "items/show/templates/notfound"
    