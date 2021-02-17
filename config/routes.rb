Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'
  post 'welcome/bucket', to: 'welcome#bucket', as: 'bucket'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
