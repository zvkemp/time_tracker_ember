TimeTrackerEmber::Application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :projects
      resources :activities
    end
  end

  root to: "home#index"
  get "*path", to: "home#index"
end
