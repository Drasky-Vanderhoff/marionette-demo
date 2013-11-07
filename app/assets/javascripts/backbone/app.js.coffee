@Demo = do (Backbone, Marionette) ->
  
  App = new Marionette.Application
  
  
  App.addRegions
    headerRegion: "#header-region"
    mainRegion: "#main-region"
    modalRegion: Marionette.Region.Modal.extend el: "#modal-region"

  App.addInitializer ->
    App.module("ItemsApp").start()
  
  App.on "initialize:after", (options) ->
    if Backbone.history
      Backbone.history.start()
  
  App