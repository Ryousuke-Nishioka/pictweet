Rails.application.routes.draw do
  devise_for :users
   root 'tweets#index'
   resources  :tweets do
   resources  :comments, onry: [:create]
   end
   resources  :users, onry: [:show]
   get 'tweets' => 'tweets#index' 
   get 'tweets/new' => 'tweets#new'
   post 'tweets'   =>  'tweets#create'
   delete  'tweets/:id'   => 'tweets#destroy'
   patch  'tweets/:id'  =>  'tweets#update'
   get  'tweets/:id/:edit'  => 'tweets#edit'
   get  'users/:id' =>  'users#show'
   get  'tweets/:id' => 'tweets#show'
end
