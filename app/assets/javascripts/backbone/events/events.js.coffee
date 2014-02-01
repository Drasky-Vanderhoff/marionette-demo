@Demo.module "Events", (Events, App, Backbone, Marionette, $, _) ->

  API =

    homePage: -> 
      App.navigate "/"
    editCurrentItem: -> 
      App.replaceAndNavigate "view", "edit"
    viewCurrentItem: ->
      App.replaceAndNavigate "edit", "view"
    _currentItem: 0
    shiftItem: (i) ->
      current = App.request "item:get:name", @_currentItem
      expected = App.request "item:get:name", @_currentItem + i
      if expected?
        @_currentItem += i
        App.replaceAndNavigate current, expected

  App.commands.setHandler "event:homePage", ->
    API.homePage()

  App.commands.setHandler "event:editCurrentItem", ->
    API.editCurrentItem()

  App.commands.setHandler "event:viewCurrentItem", ->
    API.viewCurrentItem()

  App.commands.setHandler "event:prevItem", ->
    API.shiftItem -1

  App.commands.setHandler "event:nextItem", ->
    API.shiftItem 1
