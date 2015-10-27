require 'pry'
require './client'


client = Client.new(37205)
#puts "Please enter your zipcode: "
#zip = gets.chomp

current = client.current_conditions
location = current.location
temp = current.temp
weather = current.weather
wind = current.wind
feels_like = current.feels_like
puts "The current temperature in #{location} is #{temp}."
puts "Weather: #{weather}."
puts "Wind: #{wind}."
