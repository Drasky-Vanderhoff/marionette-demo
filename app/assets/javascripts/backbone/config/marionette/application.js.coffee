do (Backbone) ->
  
  _.extend Backbone.Marionette.Application::,
  
    navigate: (route, options = {}) ->
      route = "#" + route if route.charAt(0) is "/"
      Backbone.history.navigate route, options
  
    getCurrentRoute: ->
      Backbone.history.fragment

    replaceAndNavigate: (from, to) ->
      new_path = @getCurrentRoute().replace from , to
      @navigate "/#{new_path}"