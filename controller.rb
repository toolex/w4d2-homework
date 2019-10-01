require("sinatra")
require("sinatra/contrib/all") if development?

require_relative("./models/rock_paper_scissors")
also_reload("./models/*")


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
