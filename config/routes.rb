Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  get 'sign_up', to: 'registrations#new'
  post 'sign_up', to: 'registrations#create'
  get 'sign_in', to: 'sessions#new'
  post 'sign_in', to: 'sessions#create', as: 'log_in'
  delete 'logout', to: 'sessions#destroy'

  get 'redirect_back', to: 'welcome#redirect_back'

  post 'post_a_question', to: 'questions#create'
  get 'delete_a_question/:question_id', to: 'questions#destroy', as: 'delete_a_question'
  get 'show/:question_id', to: 'questions#show', as: 'show_question'
  post 'post_an_answer/:question_id', to: 'questions#post_an_answer', as: 'post_an_answer'
  get 'destroy_an_answer/:answer_id', to: 'questions#destroy_an_answer', as: 'destroy_an_answer'
  get 'refresh_feeds/:type', to: 'questions#refresh_feeds', as: 'refresh_feeds'

end
