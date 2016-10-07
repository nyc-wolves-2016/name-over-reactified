Rails.application.routes.draw do
  post '/questions/:question_id/answers', to: 'answers#create'

  # put '/answers/:answer_id', to: 'answers#best_answer'

  delete '/answers/:answer_id', to: 'answers#destroy'

  get '/questions', to: 'questions#index'

  get '/questions/new', to: 'questions#new'

  post '/questions', to: 'questions#create'

  get '/questions/:id', to: 'questions#show'

  delete '/questions/:question_id', to: 'questions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, except: [:destroy, :update, :edit]
  get '/users/login', to: 'users#login'
  post '/users/login', to: 'users#signin'
  get '/users/logout', to: 'users#logout'
end
