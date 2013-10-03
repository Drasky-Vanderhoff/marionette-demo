@Demo.module "SearchBarApp", (SearchBarApp, App, Backbone, Marionette, $, _) ->
  @startWithParent = true
  
  API =
    showSearchBarView: (region) ->
      SearchBarApp.Show.Controller.showSearchBarView region

  App.commands.setHandler "show:searchbar:view", (region) ->
    API.showSearchBarView region
    