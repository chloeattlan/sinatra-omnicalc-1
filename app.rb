require "sinatra"
require "sinatra/reloader" if development?
require 'action_view'
require 'action_view/helpers'
include ActionView::Helpers::NumberHelper


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

get("/payment/new") do
  @rate = params["rate"]&.to_f
  @num_years = params["num_years"]&.to_f
  @pv = params["pv"]&.to_f
  erb :payment
end

get("/payment/results") do
  @rate = params["rate"]&.to_f
  @num_years = params["num_years"]&.to_f
  @pv = params["pv"]&.to_f
  r = @rate/100/12
  n = @num_years*12
  num = r*@pv
  denom = 1 - (1 + r) ** (-n)
  @payment = num/denom
  erb :payment_results
end
