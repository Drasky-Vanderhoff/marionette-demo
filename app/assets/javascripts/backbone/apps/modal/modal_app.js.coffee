@Demo.module "ModalApp", (ModalApp, App, Backbone, Marionette, $, _) ->
  @startWithParent = false
  
  API =
    showModal: ->
      ModalApp.Show.Controller.showModal()

    loadModal: (view) ->
      ModalApp.Show.Controller.loadModal view
    
    popModal: ->
      ModalApp.Show.Controller.popModal() 
    
    closeModal: ->
      ModalApp.Show.Controller.closeModal() 
  
  ModalApp.on "start", ->
    API.showModal()

  App.commands.setHandler "load:modal", (view) ->
    API.loadModal view 

  App.commands.setHandler "pop:modal", ->
    API.popModal() 

  App.commands.setHandler "close:modal" , ->
    API.closeModal() 
