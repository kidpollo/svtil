Svtil::Application.routes.draw do
  constraints(BlogDomain) do
    match '/' => 'posts#index'
    resources :posts, only: [:index, :show]
  end

  root :to => "home#index"
  match 'authors' => 'home#authors_stylesheets'
  ActiveAdmin.routes(self)
  devise_for :admin_users, ActiveAdmin::Devise.config
end
