class TodoItemsController < ApplicationController
  respond_to :json

  def index
    respond_with TodoItem.all
  end

  def create
    @todo_item = TodoItem.create(params[:todo_item])
    respond_with @todo_item
  end
end
