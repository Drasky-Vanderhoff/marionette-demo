@Demo.module "SearchBarApp.Show", (Show, App, Backbone, Marionette, $, _) ->
  
  class Show.Controller extends App.Controllers.Base
    
    initialize: ->
      @view = @getSearchBarView()

      @show @view

    getSearchBarView: ->
      new Show.SearchBar