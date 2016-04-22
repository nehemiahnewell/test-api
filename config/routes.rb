Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      get '/children' => 'children#index' , as: :index
      post '/children' => 'children#create', as: :post
      get  '/children/:id' => 'children#show', as: :show
      delete '/children/:id' =>'children#destroy', as: :destroy
      put '/children/:id' => 'children#update', as: :update
    end
  end
end