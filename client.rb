require 'httparty'

class Client
  include HTTParty
  API_KEY = 'dde604e560c795e9'

  def initialize(desired_info)
    @zipcode = 37205
  end
                                      # Need "http://" ?
  base_url = "api.wunderground.com"


  def current_conditions
    data = self.get('conditions')
    CurrentConditions.parse(data)
  end

  def sun
    data = self.get('astronomy')
  end



  def get(path)
    self.class.get("api/#{API_KEY}/#{path}/q/#{zipcode}.json")
  end

end

#http://api.wunderground.com/api/dde604e560c795e9/conditions/q/37205.json
