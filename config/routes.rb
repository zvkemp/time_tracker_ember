TimeTrackerEmber::Application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :projects
    end
  end

  root to: "home#index"
end
