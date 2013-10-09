@Demo.module "Entities", (Entities, App, Backbone, Marionette, $, _) ->
  

  class Entities.Item extends Entities.Model
  
  class Entities.ItemsCollection extends Entities.Collection
    model: Entities.Item
    url: -> ""

  Items = new Entities.ItemsCollection [
      name: "Hello" 
      thumbnail: "assets/example-slide-1.jpg"
      description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deserunt, distinctio id ut animi beatae ipsa porro ad molestiae unde quibusdam. Aliquam, officia fugiat consequuntur quos placeat! Excepturi, vero neque temporibus!"
    ,
      name: "World"
      thumbnail: "assets/example-slide-2.jpg"
      description: "Libero, magnam, praesentium laborum veniam corrupti corporis consectetur adipisci earum eaque nulla odio eius facilis iusto magni sed quaerat iste ut aliquam inventore eveniet voluptatibus aliquid ipsum quae quam aspernatur."
    ,
      name: "Foo"
      thumbnail: "assets/example-slide-3.jpg"
      description: "Libero, magnam, praesentium laborum veniam corrupti corporis consectetur adipisci earum eaque nulla odio eius facilis iusto magni sed quaerat iste ut aliquam inventore eveniet voluptatibus aliquid ipsum quae quam aspernatur."
    ,
      name: "Bar"
      thumbnail: "assets/example-slide-4.jpg"
      description: "Libero, magnam, praesentium laborum veniam corrupti corporis consectetur adipisci earum eaque nulla odio eius facilis iusto magni sed quaerat iste ut aliquam inventore eveniet voluptatibus aliquid ipsum quae quam aspernatur."
    ] 
  
  API =
    getItemEntities: ->
      Items
  
    getItemEntity: (name) ->
      Items.where({ name: name })[0]

  App.reqres.setHandler "item:entities", ->
    API.getItemEntities()

  App.reqres.setHandler "item:get", (name) ->
    API.getItemEntity name