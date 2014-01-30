do (Backbone,Marionette) ->

  class Marionette.Region.Modal extends Marionette.Region
    onShow: (view) ->
      console.log $("#modal").css("display")   
      $("#modal").modal 'show'
      console.log $("#modal").css("display")   
      $('#modal').on 'hide.bs.modal', (event) =>
        @stopListening()
        @close()
    onClose: (view) ->
      $("#modal").modal 'hide'