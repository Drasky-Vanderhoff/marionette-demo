do (Backbone,Marionette) ->

  class Marionette.Region.Modal extends Marionette.Region
    constructor: ->
      console.log "Modal Region"

    onShow: (view) ->    
      $("#modal").modal 'show'
      $('#modal').on 'hide.bs.modal', (event) =>
        @stopListening()
        @close()
    onClose: (view) ->
      $("#modal").modal 'hide'