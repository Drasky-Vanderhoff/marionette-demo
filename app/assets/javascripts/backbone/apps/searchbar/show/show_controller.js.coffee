@Demo.module "SearchBarApp.Show", (Show, App, Backbone, Marionette, $, _) ->
  
  Show.Controller =
    
    showSearchBarView: (region) ->
      region.show @getSearchBarView()

    getSearchBarView: ->
      new Show.SearchBar