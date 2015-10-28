
class Alerts

  attr_accessor :alerts

  def self.parse(data)
    obj = Alerts.new
    # if !data['alerts'][0]
    #   obj.alerts = data['alerts']['0']
    # else
      obj.alerts = "There are no alerts for your area."
    #end
    obj
  end

end
