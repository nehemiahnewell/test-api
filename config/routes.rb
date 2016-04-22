Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      get '/children' => 'children#index' , as: :index
      post '/children' => 'children#create', as: :post
      get  '/children/:id' => 'children#show', as: :show
      delete '/children/:id' =>'children#destroy', as: :destroy
      post '/children/:id' => 'children#what', as: :what
    end
  end
end