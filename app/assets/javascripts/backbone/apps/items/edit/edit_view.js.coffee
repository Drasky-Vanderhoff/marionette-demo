@Demo.module "ItemsApp.Edit", (Edit, App, Backbone, Marionette, $, _) ->

  class Edit.Layout extends App.Views.Layout
    template: "items/edit/templates/edit_layout"
    regions:
      sidebarRegion: "#sidebar-region"
      controlsRegion: "#controls-region"
      mainviewRegion: "#mainview-region"

  class Edit.Item extends App.Views.ItemView
    template: "items/edit/templates/item"
    className: "edit-item"

  class Edit.NotFound extends App.Views.ItemView
    template: "items/edit/templates/notfound"
    