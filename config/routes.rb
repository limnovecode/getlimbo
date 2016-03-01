# ./config/routes.rb

Rails.application.routes.draw do
  # Public
  root to: "pages#home"
  resource :page, path: "/" do
    get :home
    get :offline
  end

  # Limbo
  mount Span::Engine, at: "/limbo"
end
