require 'pry'
require './client'

puts "Please enter your zipcode: "
zipcode = gets.chomp
client = Client.new(zipcode)

alerts = client.alerts
puts "Alerts: #{alerts}"
puts "\n"

current = client.current_conditions
location = current.location
temp = current.temp
weather = current.weather
wind = current.wind
feels_like = current.feels_like
puts "Currently in #{location}: "
puts "\n"
puts "Temperature: #{temp}."
puts "Feels like: #{feels_like}."
puts "Weather: #{weather}."
puts "Wind: #{wind}."
puts "\n"

sun = client.sun
sunrise = sun.rise_hour + ":" + sun.rise_min
sunset = sun.set_hour + ":" + sun.set_min
puts "Sunrise at #{sunrise}."
puts "Sunset at #{sunset}."
puts "\n"

#ten_day = client.ten_day.arr
#puts "Freakin' array: #{ten_day}."

hurricane = client.hurricanes.name
puts "Current hurricanes: #{hurricane}."
