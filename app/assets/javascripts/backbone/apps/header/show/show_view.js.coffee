@Demo.module "HeaderApp.Show", (Show, App, Backbone, Marionette, $, _) ->
  
  class Show.Header extends App.Views.Layout
    template: "header/show/templates/show_header"
    regions:
      logoRegion: "#logo-region"
      searchbarRegion: "#searchbar-region"
