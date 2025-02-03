require "sinatra"
require "sinatra/reloader"

get("/") do
  erb :square
end

get("/square/new") do
  @number = params.fetch("number", 0).to_i 
  erb :square
end

get("/square/results") do
  erb :square_results
end
