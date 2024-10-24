require "sinatra"
require "sinatra/reloader"
require "tilt/erubis"
require "yaml"

before do 
  @users_file = File.read("public/users.yaml")
  @users = YAML.load(@users_file)
end

get "/" do
  erb :users, layout: :home
end

