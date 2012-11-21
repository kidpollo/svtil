Svtil::Application.routes.draw do
  constraints(BlogDomain) do
    match '/' => 'posts#index'
    resources :posts, only: [:index, :show]
  end

  root :to => "home#index"
  ActiveAdmin.routes(self)
  devise_for :admin_users, ActiveAdmin::Devise.config
end
