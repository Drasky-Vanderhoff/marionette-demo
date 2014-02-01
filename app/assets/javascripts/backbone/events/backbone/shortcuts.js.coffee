@Demo.module "Events", (Events, App, Backbone, Marionette, $, _) ->

  class ShortcutKeys extends Backbone.Shortcuts
  
    shortcuts:
      "ctrl+h" : "homePage"
      "ctrl+e" : "editCurrentItem"
      "ctrl+s" : "viewCurrentItem"
      "alt+ctrl+pageup" : "prevItem"
      "alt+ctrl+pagedown" : "nextItem"
    
    _execEvent: (jseevent, marionette_event) ->
      jseevent.preventDefault()
      App.execute marionette_event
    
    homePage: (e) -> 
      @_execEvent e, "event:homePage"
    
    editCurrentItem: (e) -> 
      @_execEvent e, "event:editCurrentItem"
    
    viewCurrentItem: (e) ->
      @_execEvent e, "event:viewCurrentItem"
    
    prevItem: (e) ->
      @_execEvent e, "event:prevItem"
    
    nextItem: (e) ->  
      @_execEvent e, "event:nextItem"
  
  shortcuts = new ShortcutKeys