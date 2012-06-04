class Todo.Views.TodoItemsIndex extends Backbone.View
  template: JST['backbone/templates/todo_items/index']

  render: ->
    $(@el).html(@template(todo_items: 'testing'))
    this
