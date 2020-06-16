Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "celebrities#index" #show all celebrities
  get "celebrities/new", to: "celebrities#new" #return html form for creating a new celebrity
  post "/celebrities" , to: "celebrities#create"  #create a new celebrity
  get "/celebrities/:id", to: "celebrities#show"  #display a specific celebrity
  get "/celebrities/:id/edit", to: "celebrities#edit" #return html form for editing
  patch "/celebrities/:id", to: "celebrities#update" 
  put "/celebrities/:id", to: "celebrities#update"
  #update a specific celebrity
  delete "/celebrities/:id", to: "celebrities#destroy" # delete a specific celebrity


end
