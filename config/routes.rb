Stratadex::Application.routes.draw do
  constraints Clearance::Constraints::SignedIn.new do
    get '/' => 'dashboards#show'
  end

  root to: 'welcome#index'
  resource :dashboard, only: :show
  resources :contacts, only: :create
  resources :contacts, only: :destroy
end
