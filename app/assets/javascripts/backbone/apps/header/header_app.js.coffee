@Demo.module "HeaderApp", (HeaderApp, App, Backbone, Marionette, $, _) ->
  @startWithParent = false
  
  API =
    showHeader: ->
      new HeaderApp.Show.Controller 
        region: App.headerRegion

  App.commands.setHandler "header:show", ->
    API.showHeader()