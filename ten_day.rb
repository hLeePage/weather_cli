class TenDay

  attr_accessor :day, :conditions

  def self.parse(data)
    obj = TenDay.new

    20.times do |i|
      day = data['forecast']['txt_forecast']['forecastday'][i]['title']
      conditions = data['forecast']['txt_forecast']['forecastday'][i]['fcttext']
      obj[day] = [conditions]
    end
    obj
  end

end
