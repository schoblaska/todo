class TodoItemsController < ApplicationController
  respond_to :json

  def index
    respond_with TodoItem.all
  end
end
