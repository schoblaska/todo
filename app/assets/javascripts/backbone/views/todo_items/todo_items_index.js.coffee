class Todo.Views.TodoItemsIndex extends Backbone.View
  template: JST['backbone/templates/todo_items/index']

  events:
    'submit #new_todo_item': 'createTodoItem'

  initialize: ->
    @collection.on('reset', @render)
    @collection.on('add', @render)

  render: =>
    $(@el).html(@template(todo_items: @collection))
    this

  createTodoItem: (event) ->
    event.preventDefault()
    @collection.create name: $('#new_todo_item_name').val()
