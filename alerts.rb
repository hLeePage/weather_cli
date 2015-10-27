
class Alerts

  def self.parse(data)
    obj = Alerts.new
    obj.alerts = data['alerts']
    obj
  end
end
