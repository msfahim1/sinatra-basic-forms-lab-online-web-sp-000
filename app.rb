require_relative 'config/environment'

class App < Sinatra::Base
    get "/" do
        erb :index
    end

    get "/new" do
        erb :create_puppy
    end

    post "/puppy" do
        @breed = params["breed"]
        @name = params["name"]
        @age = params["months_old"]
        erb :display_puppy
    end
end
