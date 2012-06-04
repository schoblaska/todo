class Todo.Views.TodoItem extends Backbone.View
  template: JST['backbone/templates/todo_items/todo_item']
  tagName: 'li'

  render: ->
    $(@el).html(@template(todo_item: @model))
    this
