Backbone.Marionette.Renderer.render = (template, data) ->
  path = JST["backbone/apps/#{template}"]
  throw "Template #{template} not found" unless path?
  path data
  