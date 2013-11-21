@Demo.module "LogoApp.Show", (Show, App, Backbone, Marionette, $, _) ->
  
  class Show.Controller extends App.Controllers.Base
    
    initialize: ->
      @view = @getLogoView()

      @show @view

    getLogoView: ->
      new Show.Logo