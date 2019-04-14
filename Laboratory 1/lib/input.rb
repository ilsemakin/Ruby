# frozen_string_literal: true

require_relative 'tourist'
require_relative 'tour'
require_relative 'travel_agency'
require 'psych'

# methods for input
module Input
  TOURS = File.expand_path('../data/tours.yaml', __dir__)
  TOURISTS = File.expand_path('../data/tourists.yaml', __dir__)
  def self.string(message)
    loop do
      print message.to_s
      line = gets
      exit if line.nil?

      line = line.strip
      if line.empty?
        puts 'Line is empty! Try again!'
        next
      end
      return line
    end
  end

  def self.number(message)
    loop do
      print message.to_s
      line = gets
      exit if line.nil?

      number = Float(line.strip)
      return number if number >= 0

      puts 'Invalid number! Try again!'
    rescue ArgumentError => _exception
      puts 'Invalid input! Try again!'
    end
  end

  def self.sights(message)
    puts "\nWrite 'stop' to finish adding sights to the list"
    list = []
    loop do
      line = string(message)

      if line == 'stop' && list.empty?
        puts 'List can not void!'
        next
      end
      return list if line == 'stop'

      list.push(line)
    end
  end

  def self.transport(message)
    transports = %w[bus train plane streamship]

    loop do
      puts "\nType of transport : #{transports}"
      in_transport = string(message)
      transports.each do |transport|
        return in_transport if in_transport == transport
      end

      puts 'Invalid type of transport! Try again!'
    end
  end

  def self.charge(message)
    loop do
      print message.to_s
      min = number('Min : ')
      max = number('Max : ')
      return Range.new(min, max) if min < max

      puts 'Invalid cost range! Try again!'
    end
  end

  def self.read_files
    travel_agency = TravelAgency.new
    return travel_agency if !File.exist?(TOURS) || !File.exist?(TOURISTS)

    Psych.load_file(TOURS).each do |value|
      travel_agency.add_tour(Tour.new(value['place'], value['sights'], value['days'], value['price'],
                                      value['transport'], value['tourists']))
    end
    Psych.load_file(TOURISTS).each do |value|
      tourist = Tourist.new(value['name'], value['surname'], value['middle_name'],
                            value['place'], value['sight'], value['transport'], value['min'], value['max'])
      travel_agency.add_tourist(tourist)
    end
    travel_agency
  rescue Psych::SyntaxError => _exception
    puts 'Error in file'
    travel_agency
  end
end
