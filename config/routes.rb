Todo::Application.routes.draw do
  resources :todo_items
  root :to => 'welcome#index'
end
