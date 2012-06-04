class TodoItem < ActiveRecord::Base
  attr_accessible :done, :name
end
