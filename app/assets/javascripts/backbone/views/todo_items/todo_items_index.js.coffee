class Todo.Views.TodoItemsIndex extends Backbone.View
  template: JST['backbone/templates/todo_items/index']

  events:
    'submit #new_todo_item': 'createTodoItem'

  initialize: ->
    @collection.on('reset', @render)
    @collection.on('add', @appendTodoItem)

  render: =>
    $(@el).html(@template())
    @collection.each(@appendTodoItem)
    this

  createTodoItem: (event) ->
    event.preventDefault()
    @collection.create name: $('#new_todo_item_name').val()

  appendTodoItem: (todo_item) ->
    view = new Todo.Views.TodoItem(model: todo_item)
    $('#todo-items').append(view.render().el)
