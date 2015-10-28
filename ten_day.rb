class TenDay

  attr_accessor :arr

  def self.parse(data)
    obj = TenDay.new
    obj.arr = []
    20.times do |i|
      day = data['forecast']['txt_forecast']['forecastday'][i]['title']
      conditions = data['forecast']['txt_forecast']['forecastday'][i]['fcttext']
    end

  end

end
