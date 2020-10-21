Rails.application.routes.draw do
#一覧画面へのルーティング
  get '/users', to: 'users#index'
#新規登録画面へのルーティング
  get '/users/new', to: 'users#new'
#新規登録を行うためのルーティング
  post '/users', to: 'users#create'
#削除を行うためのルーティング
  get '/users/:id/edit', to: 'users#edit'

  patch '/users/:id', to: 'users#update'

  delete '/users/:id', to: 'users#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
