class Hurricanes

  attr_accessor :name

  def self.parse(data)
    obj = Hurricanes.new
    if data['currenthurricane'][0]['stormInfo']['stormName']
      obj.name = data['currenthurricane'][0]['stormInfo']['stormName']
    else
      obj.name = "Currently, there are no hurricanes."
    end
    obj
  end

end
