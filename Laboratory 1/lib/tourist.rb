# frozen_string_literal: true

# create one tourist
class Tourist
  include Comparable
  attr_reader :name, :surname, :m_name, :place, :sight, :transport, :min, :max

  def initialize(name, surname, m_name, place, sight, transport, min, max)
    @name = name
    @surname = surname
    @m_name = m_name
    @place = place
    @sight = sight
    @transport = transport
    @min = min
    @max = max
  end

  def ==(other)
    @name == other.name &&
      @surname == other.surname &&
      @m_name == other.m_name
  end

  def to_s
    str = "\nName : #{@name}" \
          "\nSurname : #{@surname}" \
          "\nMiddle name : #{@m_name}" \
          "\nPlace : #{@place}" \
          "\nSight : #{@sight}" \
          "\nType of transoprt : #{@transport}" \
          "\nChargе : #{@min}..#{@max}"
    str
  end
end
