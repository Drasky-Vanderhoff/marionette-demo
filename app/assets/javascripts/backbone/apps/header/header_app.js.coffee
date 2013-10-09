@Demo.module "HeaderApp", (HeaderApp, App, Backbone, Marionette, $, _) ->
  @startWithParent = false
  
  API =
    showHeader: ->
      HeaderApp.Show.Controller.showHeader()

  App.commands.setHandler "header:show", ->
    API.showHeader()