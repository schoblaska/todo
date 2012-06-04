class Todo.Routers.TodoItemsRouter extends Backbone.Router
  routes:
    '': 'index'

  index: ->
    view = new Todo.Views.TodoItemsIndex
    $('#container').html(view.render().el)
