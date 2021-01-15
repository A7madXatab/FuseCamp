Rails.application.routes.draw do
  resources :t1s
  resources :projects

  devise_for :users
  root "users#show"

  resources :users, path: '' do
    resources :projects do
      resources :todo_sets, path: 'todosets' do
        resources :todos do
          resources :comments, module: :todos
        end
        resources :comments, module: :todo_sets
      end
    end

    resource :bucket do
      resources :todos
    end

  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
