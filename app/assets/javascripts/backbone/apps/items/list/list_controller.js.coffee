@Demo.module "ItemsApp.List", (List, App, Backbone, Marionette, $, _) ->

  List.Controller =
  
    listItems: ->
      items = App.request "item:entities"
      layout = @getLayoutView()
      layout.on "show", =>
        @showItems items ,layout
        @showThumbs items ,layout
      App.mainRegion.show layout
      App.modalRegion.close()
      App.execute "header:show"

      interact(".dropzone").dropzone(true).accept(".drag-drop")
      .on "drop", (event) ->
        name = event.relatedTarget.firstChild.alt
        $("[alt=#{name}]").parent().parent().last().css("visibility","visible")
        $(".drag-drop").attr("style", "")
        return

      interact(".drag-drop").draggable 
        onmove: (event) ->
          target = event.target
          target.x = (target.x | 0) + event.dx
          target.y = (target.y | 0) + event.dy
          target.style.webkitTransform = target.style.transform = "translate(" + target.x + "px, " + target.y + "px)"
          return



    showItems: (items, layout) ->
      itemsView = @getItemsView items
      layout.itemsRegion.show itemsView

    showThumbs: (items, layout) ->
      thumbView = @getThumbView items
      layout.thumbsRegion.show thumbView
    
    getItemsView: (items) ->
      new List.Items
        collection: items
    
    getThumbView: (items) ->
      new List.Thumbs
        collection: items

    getLayoutView: ->
      new List.Layout