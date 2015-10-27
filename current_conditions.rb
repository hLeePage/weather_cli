class CurrentConditions

  attr_accessor :location, :temp, :weather, :wind, :feels_like

  def self.parse(data)
    obj = CurrentConditions.new
    obj.location = data['current_observation']['display_location']['full']
    obj.temp = data['current_observation']['temperature_string']
    obj.weather = data['current_observation']['weather']
    obj.wind = data['current_observation']['wind_string']
    obj.feels_like = data['current_observation']['feelslike_string']
    obj
  end

end
