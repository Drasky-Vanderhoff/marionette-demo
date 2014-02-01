@Demo.module "Events", (Events, App, Backbone, Marionette, $, _) ->
  _execEvent = (jseevent, marionette_event) ->
    jseevent.preventDefault()
    App.execute marionette_event

  $('#modal-region').hammer().on "doubletap", ".modal-content", (e) -> 
    console.log e
    _execEvent e, "event:homePage"

  $('#modal-region').hammer().on "dragleft", ".modal-content", (e) -> 
    console.log e
    _execEvent e, "event:prevItem"

  $('#modal-region').hammer().on "dragright", ".modal-content", (e) -> 
    console.log e
    _execEvent e, "event:nextItem"
  