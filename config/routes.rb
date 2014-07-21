Rails.application.routes.draw do
  
 
  get 'user_creds/new'  => 'application#new'
  get 'user_creds/create' => 'application#create'
  get 'user_creds/:id' => 'application#show'
  
  
end
