@Demo.module "ModalApp.Show", (Show, App, Backbone, Marionette, $, _) ->
  
  class Show.Modal extends App.Views.Layout
    template: "modal/show/templates/show_modal"
    regions:
      contentRegion: "#content-region"

    onShow: ->
      $(".md-trigger").modalEffects({})