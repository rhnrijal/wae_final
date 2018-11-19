Rails.application.routes.draw do

  get 'main/index'
  root 'course_offerings#index'

  resources :registration_courses
  resources :course_offerings
  resources :courses


  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
