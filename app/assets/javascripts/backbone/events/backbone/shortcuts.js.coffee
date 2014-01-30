@Demo.module "Events", (Events, App, Backbone, Marionette, $, _) ->

  class ShortcutKeys extends Backbone.Shortcuts
    shortcuts:
      "ctrl+h" : "homePage"
      "ctrl+e" : "editCurrentItem"
      "ctrl+s" : "viewCurrentItem"
      "alt+ctrl+pageup" : "prevItem"
      "alt+ctrl+pagedown" : "nextItem"
    homePage: (e) -> 
      e.preventDefault()
      App.navigate "/"
    editCurrentItem: (e) -> 
      e.preventDefault()
      App.replaceAndNavigate "view", "edit"
    viewCurrentItem: (e) ->
      e.preventDefault()
      App.replaceAndNavigate "edit", "view"
    _currentItem: 0
    prevItem: (e) ->
      e.preventDefault()
      current = App.request "item:get:name", @_currentItem
      @_currentItem--
      prev = App.request "item:get:name", @_currentItem
      if prev?
        App.replaceAndNavigate current, prev
      else
        @_currentItem++
    nextItem: (e) ->  
      e.preventDefault()
      current = App.request "item:get:name", @_currentItem
      @_currentItem++
      next = App.request "item:get:name", @_currentItem
      if next?
        App.replaceAndNavigate current, next
      else
        @_currentItem--
  shortcuts = new ShortcutKeys