class TodoItemsController < ApplicationController
  respond_to :json

  def index
    respond_with TodoItem.all
  end

  def create
    @todo_item = TodoItem.create(:name => params[:name])
    respond_with @todo_item
  end

  def update
    @todo_item = TodoItem.find(params[:id])
    @todo_item.update_attributes(:done => params[:done])
    respond_with @todo_item
  end
end
