require 'httparty'
require 'json'
require 'open-uri'
require 'pry'

#puts "Please enter your zipcode: "
#zip = gets.chomp
zip = 37205

# Current conditions
response = HTTParty.get("http://api.wunderground.com/api/dde604e560c795e9/geolookup/conditions/q/#{zip}.json")
location = response['location']['city']
temp_f = response['current_observation']['temp_f']
puts "Current temperature in #{location} is: #{temp_f}\n"

# Sunrise/sunset
response = HTTParty.get("http://api.wunderground.com/api/dde604e560c795e9/astronomy/q/#{zip}.json")
rise_hour = response['sun_phase']['sunrise']['hour']
rise_min = response['sun_phase']['sunrise']['minute']
set_hour = response['sun_phase']['sunset']['hour']
set_min = response['sun_phase']['sunset']['minute']
puts "Sunrise at #{rise_hour}:#{rise_min}"
puts "Sunset at #{set_hour}:#{set_min}"

# 10 Day Forecast
response = HTTParty.get("http://api.wunderground.com/api/dde604e560c795e9/forecast10day/q/#{zip}.json")
#binding.pry
10.times do |i|
day = response['forecast']['txt_forecast']['forecastday'][i]['title']
conditions = response['forecast']['txt_forecast']['forecastday'][i]['fcttext']
puts "Conditions for #{day} :#{conditions}"
end
