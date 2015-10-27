class Sun

  def self.parse(data)
    obj = Sun.new
    obj.rise_hour = data['sun_phase']['sunrise']['hour']
    obj.rise_min = data['sun_phase']['sunrise']['minute']
    obj.set_hour = data['sun_phase']['sunset']['hour']
    obj.set_min = data['sun_phase']['sunset']['minute']
    obj
  end
  
end
