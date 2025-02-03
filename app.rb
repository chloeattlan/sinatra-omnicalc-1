require "sinatra"
require "sinatra/reloader"

get("/") do
  erb :square
end

get("/square/new") do
  @num = params["users_number"]&.to_i
  erb :square
end

get("/square/results") do
  @num = params["users_number"]&.to_i
  @the_num = params.fetch("users_number").to_f
  @the_result = @the_num**2
  erb :square_results
end

get("/square_root/new") do
  @num = params["users_number"]&.to_i
  erb :square_root
end

get("/square_root/results") do
  @num = params["users_number"]&.to_i
  @the_num = params.fetch("users_number").to_f
  @the_result = Math.sqrt(@the_num)
  erb :square_root_results
end
