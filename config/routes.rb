Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'
  get 'search' => 'search#search'
end
