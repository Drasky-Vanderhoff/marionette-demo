@Demo.module "HeaderApp.Show", (Show, App, Backbone, Marionette, $, _) ->
  
  class Show.Controller extends App.Controllers.Base
    
    initialize: ->
      headerView = @getHeaderView()
      @show headerView
      App.execute "show:logo:view", headerView.logoRegion
      App.execute "show:searchbar:view", headerView.searchbarRegion

    getHeaderView: ->
      new Show.Header