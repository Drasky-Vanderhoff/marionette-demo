@Demo.module "LogoApp", (LogoApp, App, Backbone, Marionette, $, _) ->
  @startWithParent = true
  
  API =
    showLogo: (region) ->
      new LogoApp.Show.Controller 
        region: region

  App.commands.setHandler "show:logo:view", (region) ->
    API.showLogo region
    