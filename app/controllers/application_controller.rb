require 'pry'

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  post '/users' do
    user = User.create(
      name: params[:name],
      avatar_id: params[:avatar_id]
    )
    user.to_json
  end
  get '/users' do
    User.all.to_json
  end
  get "/avatars" do 
    Avatar.all.to_json
  end

  get "/levels" do 
    Level.all.to_json
  end

  get "/questions" do
    Question.all.to_json
  end
end
