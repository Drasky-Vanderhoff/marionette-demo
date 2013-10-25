@Demo = do (Backbone, Marionette) ->
	
	App = new Marionette.Application
	
	# App.rootRoute = Routes.items_path()
	
	App.addRegions
		headerRegion: "#header-region"
		mainRegion: "#main-region"
		modalRegion: "#modal-region"

  App.addInitializer ->
    App.module("ModalApp").start()
	
	App.on "initialize:after", (options) ->
		if Backbone.history
			Backbone.history.start()
			# @navigate(@rootRoute, trigger: true) if @getCurrentRoute() is ""
	
	App