require 'sinatra'

get "/" do
  "<h1>The homepage</h1>"
end

get "/random-cat" do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb :index
end

post "/named-cat" do
  p params
  @name = params[:name]
  erb :index
end

get "/cat-naming-form" do
  p params
  erb :name_that_cat
end
