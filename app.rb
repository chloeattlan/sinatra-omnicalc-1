require "sinatra"
require "sinatra/reloader"

get("/") do
  erb :square
end

get("/square/new") do
  @num = params["user_num"]&.to_i
  erb :square
end

get("/square/results") do
  @num = params["user_num"]&.to_i
  @the_num = params.fetch("user_num").to_f
  @the_result = @the_num**2
  erb :square_results
end
