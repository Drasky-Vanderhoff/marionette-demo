@Demo.module "LogoApp.Show", (Show, App, Backbone, Marionette, $, _) ->
  
  Show.Controller =
    
    showLogoView: (region) ->
      region.show @getLogoView()

    getLogoView: ->
      new Show.Logo