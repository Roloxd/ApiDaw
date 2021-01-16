Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  get 'welcome/show'
 resources:articles 
 resources:users
 resources:usuarios
 root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
