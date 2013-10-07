@Demo.module "Entities", (Entities, App, Backbone, Marionette, $, _) ->
  
  class Entities.Item extends Entities.Model
  
  class Entities.ItemsCollection extends Entities.Collection
    model: Entities.Item
    url: -> ""
  
  API =
    getItemEntities: ->
      new Entities.ItemsCollection [
        name: "Hello" 
        thumbnail: "http://lorempixel.com/400/200/"
        description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deserunt, distinctio id ut animi beatae ipsa porro ad molestiae unde quibusdam. Aliquam, officia fugiat consequuntur quos placeat! Excepturi, vero neque temporibus!
        Libero, magnam, praesentium laborum veniam corrupti corporis consectetur adipisci earum eaque nulla odio eius facilis iusto magni sed quaerat iste ut aliquam inventore eveniet voluptatibus aliquid ipsum quae quam aspernatur."
      ,
        name: "World"
        thumbnail: "http://lorempixel.com/400/200/"
        description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deserunt, distinctio id ut animi beatae ipsa porro ad molestiae unde quibusdam. Aliquam, officia fugiat consequuntur quos placeat! Excepturi, vero neque temporibus!
        Libero, magnam, praesentium laborum veniam corrupti corporis consectetur adipisci earum eaque nulla odio eius facilis iusto magni sed quaerat iste ut aliquam inventore eveniet voluptatibus aliquid ipsum quae quam aspernatur."
      ]
  
    getItemEntity: (name) ->
      new Entities.Item 
        name: name 
        thumbnail: "http://lorempixel.com/1900/1900/"
        description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deserunt, distinctio id ut animi beatae ipsa porro ad molestiae unde quibusdam. Aliquam, officia fugiat consequuntur quos placeat! Excepturi, vero neque temporibus!
        Libero, magnam, praesentium laborum veniam corrupti corporis consectetur adipisci earum eaque nulla odio eius facilis iusto magni sed quaerat iste ut aliquam inventore eveniet voluptatibus aliquid ipsum quae quam aspernatur."

  App.reqres.setHandler "item:entities", ->
    API.getItemEntities()

  App.reqres.setHandler "item:get", (name) ->
    API.getItemEntity name