require "sinatra"
require "sinatra/reloader"
require "tilt/erubis"

get "/" do
  @public_files = Dir.new('public').to_a[2..]
  @public_files.map! { |file| File.basename(file, ".*") }

  erb :public_files
end

get "/whodat" do
  @file_contents = File.read('public/whodat.doc')

  erb :whodat
end

get "/template" do
  @file_contents = File.read('public/template.html')

  erb :template
end
