@Demo.module "HeaderApp.Show", (Show, App, Backbone, Marionette, $, _) ->
  
  Show.Controller =
    
    showHeader: ->
      headerView = @getHeaderView()
      App.headerRegion.show headerView
      App.execute "show:logo:view", headerView.logoRegion
      App.execute "show:searchbar:view", headerView.searchbarRegion

    getHeaderView: ->
      new Show.Header