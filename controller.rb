require("sinatra")
require("sinatra/contrib/all") if development?

require_relative("./models/rock_paper_scissors")
also_reload("./models/*")

get "/" do
  erb(:home)
end

get "/rock" do
  erb(:rock)
end

get "/paper" do
  erb(:paper)
end

get "/scissors" do
  erb(:scissors)
end

get "/rock/:fight" do
  @result = Rps.rock(params[:fight])
  erb(:result)
end

get "/paper/:fight" do
  @result = Rps.paper(params[:fight])
  erb(:result)
end

get "/scissors/:fight" do
  @result = Rps.scissors(params[:fight])
  erb(:result)
end
