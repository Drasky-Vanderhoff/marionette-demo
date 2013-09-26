@Demo.module "Entities", (Entities, App, Backbone, Marionette, $, _) ->
	
	class Entities.User extends Entities.Model
	
	class Entities.UsersCollection extends Entities.Collection
		model: Entities.User
		url: -> Routes.users_path()
	
	API =
		
		getUserEntities: (cb) ->
			users = new Entities.UsersCollection
			users.fetch
				success: ->
					cb users
	
	App.reqres.setHandler "user:entities", (cb) ->
		API.getUserEntities cb