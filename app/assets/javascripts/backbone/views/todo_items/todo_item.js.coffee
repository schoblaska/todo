class Todo.Views.TodoItem extends Backbone.View
  template: JST['backbone/templates/todo_items/todo_item']
  tagName: 'li'

  initialize: ->
    @model.on('change', @render)

  events:
    'click .mark-done': 'markDone'

  render: =>
    $(@el).html(@template(todo_item: @model))
    this

  markDone: ->
    @model.set(done: true)
    @model.save()
