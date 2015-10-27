class CurrentConditions

  def self.parse data
    obj = CurrentConditions.new
    obj.location = data['location']['city']
    temp_f = data['current_observation']['temp_f']
    obj
  end
end
