#= require_self
#= require_tree ./templates
#= require_tree ./models
#= require_tree ./views
#= require_tree ./routers

window.Todo =
  Models: {}
  Collections: {}
  Routers: {}
  Views: {}
  init: ->
    new Todo.Routers.TodoItemsRouter
    Backbone.history.start()

$(document).ready ->
  Todo.init()
