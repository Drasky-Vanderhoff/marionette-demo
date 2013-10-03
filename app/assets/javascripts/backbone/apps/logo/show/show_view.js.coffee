@Demo.module "LogoApp.Show", (Show, App, Backbone, Marionette, $, _) ->
  
  class Show.Logo extends App.Views.ItemView
    template: "logo/show/templates/show_logo"
