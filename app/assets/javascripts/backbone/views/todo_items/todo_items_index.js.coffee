class Todo.Views.TodoItemsIndex extends Backbone.View
  template: JST['backbone/templates/todo_items/index']

  initialize: ->
    @collection.on('reset', @render)

  render: =>
    $(@el).html(@template(todo_items: @collection))
    this
