@Demo.module "LogoApp", (LogoApp, App, Backbone, Marionette, $, _) ->
  @startWithParent = true
  
  API =
    showLogoView: (region) ->
      LogoApp.Show.Controller.showLogoView region

  App.commands.setHandler "show:logo:view", (region) ->
    API.showLogoView region
    