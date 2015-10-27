class Hurricane

  attr_accessor :name
  
  def self.parse(data)
    obj = Hurricane.new
    obj.name = response['currenthurricane'][0]['stormInfo']['stormName']
    obj
  end

end
