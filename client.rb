require 'httparty'

class Client

  include HTTParty

  API_KEY = 'dde604e560c795e9'

  base_uri "api.wunderground.com"

  def initialize(zipcode)
    @zipcode = 37205
  end
                                      # Need "http://" ?
  def current_conditions
    data = self.get('conditions')
    CurrentConditions.parse(data)
  end

  def sun
    data = self.get('astronomy')
    Sun.parse(data)
  end

  def alerts
    data = self.get('alerts')
    Alerts.parse(data)
  end

  def ten_day
    data = self.get('forecast10day')
    TenDay.parse(data)
  end

  def hurricanes
    data = self.class.get("/api/#{API_KEY}/currenthurricane/view.json")
    Hurricanes.parse(data)
  end




  def get(path)
    self.class.get("/api/#{API_KEY}/#{path}/q/#{zipcode}.json")
  end

end

#http://api.wunderground.com/api/dde604e560c795e9/conditions/q/37205.json
