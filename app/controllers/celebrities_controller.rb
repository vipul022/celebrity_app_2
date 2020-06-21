 class CelebritiesController < ApplicationController
    skip_before_action :verify_authenticity_token
    before_action :setup_data
    
    #Show all celebrities
    def index
      
    end
    
    #Show a single celebrity
    def show
      id = params[:id].to_i - 1
      # p params
      # p @celebrities
       @celebrity = @celebrities[id]
      #  render json: @celebrity
    end
    
    #Create a new celebrity
    def create
    end
    
    #Update a celebrity
    def update
       id = params[:id].to_i - 1
      p id
      @celebrities[id]["name"] = params["name"]
      @celebrities[id]["notability"] = params["notability"]
      render json: @celebrities
    end
    
    #Remove a celebrity
    def destroy
       id = params[:id].to_i - 1
      p id
      @celebrities.delete_at(id) 
      render json: @celebrities
    end

    private
    def setup_data
        session[:celebrities] = [
            { "id" => 1,"name" => "Lindsay Lohan", "notability" => "Parent Trap" },
            { "id" => 2,"name" => "Adam Sandler", "notability" => "Big Daddy" },
            { "id" => 3,"name" => "Rob Schnider", "notability" => "Adam Sandler" }
        ] 
        # unless session[:celebrities]
    
        @celebrities = session[:celebrities]
    end
end