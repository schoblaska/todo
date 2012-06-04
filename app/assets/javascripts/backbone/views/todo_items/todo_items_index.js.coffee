class Todo.Views.TodoItemsIndex extends Backbone.View
  template: JST['backbone/templates/todo_items/index']

  events:
    'submit #new-todo-item': 'createTodoItem'

  initialize: ->
    @collection.on('reset', @render)
    @collection.on('add', @appendTodoItem)

  render: =>
    $(@el).html(@template())
    @collection.each(@appendTodoItem)
    this

  createTodoItem: (event) ->
    event.preventDefault()
    attributes = name: $('#new-todo-item-name').val()
    @collection.create todo_item: attributes,
      wait: true
      success: -> $('#new-todo-item')[0].reset()
      error: @handleError

  appendTodoItem: (todo_item) ->
    view = new Todo.Views.TodoItem(model: todo_item)
    $('#todo-items').append(view.render().el)

  handleError: (todo_item, response) ->
    if response.status == 422
      errors  = $.parseJSON(response.responseText).errors
      for attribute, messages of errors
        alert "#{attribute} #{message}" for message in messages
