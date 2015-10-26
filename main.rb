require 'httparty'
require 'json'
require 'open-uri'

puts "Please enter your city: "
zip = gets.chomp

open("http://api.wunderground.com/api/dde604e560c795e9/geolookup/conditions/q/IA/#{zip}.json") do |f|
  json_string = f.read
  parsed_json = JSON.parse(json_string)
  location = parsed_json['location']['city']
  temp_f = parsed_json['current_observation']['temp_f']
  print "Current temperature in #{location} is: #{temp_f}\n"
end
