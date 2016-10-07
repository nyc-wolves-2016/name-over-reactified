Rails.application.routes.draw do

  # TODO Votes route
  post '/votes', to: 'votes#create'

  ## Create a new question comment
  post '/questions/:question_id/comments', to: 'comments#create_question_comment'

  # Create a new answer comment
  post '/questions/:question_id/answer/:answer_id/new', to: 'comments#create_answer_comment'

  # Delete a comment
  delete '/comments/:comment_id', to: 'comments#destroy'

  post '/questions/:question_id/answers', to: 'answers#create'

  # TODO later
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
