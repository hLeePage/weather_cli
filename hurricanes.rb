class Hurricane
  response = HTTParty.get("http://api.wunderground.com/api/#{KEY}/currenthurricane/view.json")
  hurricanes = response['currenthurricane'][0]['stormInfo']['stormName']
end

# class Hurricane
#   attr_accessor :name

  # def self.parse hsh
  #   obj = Hurricane.new
  #   obj.name = hsh['stormInfo']['stormName_Nice']
  #   obj
  # end
# end
