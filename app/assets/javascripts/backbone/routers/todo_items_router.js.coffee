class Todo.Routers.TodoItemsRouter extends Backbone.Router
  routes:
    '': 'index'

  index: ->
    collection = new Todo.Collections.TodoItems()
    collection.fetch()
    view = new Todo.Views.TodoItemsIndex({collection})
    $('#container').html(view.render().el)
