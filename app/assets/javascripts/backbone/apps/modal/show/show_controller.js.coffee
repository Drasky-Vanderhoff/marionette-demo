@Demo.module "ModalApp.Show", (Show, App, Backbone, Marionette, $, _) ->
  
  Show.Controller =
    
    showModal: ->
      @modalView = @getModalView()
      App.modalRegion.show @modalView

    popModal: () ->
      $(".md-trigger").click()

    loadModal: (view) ->
      @modalView.contentRegion.show view
      
    closeModal: () ->
      $(".md-close").click()
      
    getModalView: ->
      new Show.Modal