require "sinatra"
require "sinatra/reloader"
require "tilt/erubis"
require "yaml"

before do 
  @users_file = File.read("public/users.yaml")
  @users = YAML.load(@users_file)
end

helpers do 
end

get "/" do
  erb :users, layout: :home
end

get "/user/:name" do
  @name = params[:name]
  @user = @users[@name.to_sym]
  erb :user, layout: :home
end