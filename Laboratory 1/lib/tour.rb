# frozen_string_literal: true

# create one tour
class Tour
  attr_reader :place, :sights, :days, :price, :transport, :tourists

  def initialize(place, sights, days, price, transport, tourists)
    @place = place
    @sights = sights
    @days = days
    @price = price
    @transport = transport
    @tourists = tourists
  end

  def to_s
    str = "\nPlace : #{@place}" \
          "\nSights : #{@sights}" \
          "\nDays : #{@days}" \
          "\nPrice : #{@price}" \
          "\nType of transport : #{@transport}" \
          "\nTourists : #{@tourists}"
    str
  end
end
