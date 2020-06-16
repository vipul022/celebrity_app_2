Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "celebrities#index" #show all celebrities
  get "celebrities/new", "celebrities#new" #return html form for creating a new celebrity
  post "/celebrities" , "celebrities#create"  #create a new celebrity
  get "/celebrities/:id", "celebrities#show"  #display a specific celebrity
  get "/celebrities/:id/edit", "celebrities#edit" #return html form for editing
  patch "/celebrities/:id", "celebrities#update" #update a specific celebrity
  delete "/celebrities/:id", "celebrities#destroy" # delete a specific celebrity


end
