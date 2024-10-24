require "sinatra"
require "sinatra/reloader"
require "tilt/erubis"
require "yaml"

before do 
  @users_file = File.read("public/users.yaml")
  @users = YAML.load(user_file)
end

get "/" do

end

