Rails.application.routes.draw do
  get 'hackathon/register'
  root 'home#index'
  get 'home/contact'
  get 'home/form'
  post 'home/submit'
  get 'home/team'


  post 'hackathon/submit'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
