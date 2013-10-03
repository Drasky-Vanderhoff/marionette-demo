@Demo.module "SearchBarApp.Show", (Show, App, Backbone, Marionette, $, _) ->
  
  class Show.SearchBar extends App.Views.ItemView
    template: "searchbar/show/templates/show_searchbar"
