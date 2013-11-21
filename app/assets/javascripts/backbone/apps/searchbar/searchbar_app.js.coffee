@Demo.module "SearchBarApp", (SearchBarApp, App, Backbone, Marionette, $, _) ->
  @startWithParent = true
  
  API =
    showSearchBarView: (region) ->
      new SearchBarApp.Show.Controller 
        region: region

  App.commands.setHandler "show:searchbar:view", (region) ->
    API.showSearchBarView region
    