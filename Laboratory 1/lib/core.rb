# frozen_string_literal: true

require_relative 'input'
require_relative 'travel_agency'

# scan commands
class Core
  include Input
  def initialize
    @travel_agency = Input.read_files
    @commands = { 1 => :show_tours, 2 => :show_tourists,
                  3 => :add_tour, 4 => :add_tourist,
                  5 => :delete_tour, 6 => :delete_tourist,
                  7 => :tours_for_tourist, 8 => :tour_place,
                  9 => :tour_sight, 10 => :tour_price,
                  11 => :tourists_for_tour, 12 => :groups,
                  0 => :help, 100 => :exit }
    help
  end

  def start
    loop do
      send(Input.command(@commands))
    end
  end

  private

  def show_tours
    show(@travel_agency.show_tours)
  end

  def show_tourists
    show(@travel_agency.show_tourists)
  end

  def add_tour
    place = Input.string('Input the country or city : ')
    sights = Input.sights('Input the sight : ')
    days = Input.number('Input the number of days of the tour : ')
    price = Input.number('Input the price of visiting the tour : ')
    transport = Input.transport('Input the type of transport : ')
    tourists = Input.number('Input the number of tourists : ')

    tour = Tour.new(place, sights, days, price, transport, tourists)
    @travel_agency.add_tour(tour)
  end

  def add_tourist
    name = Input.string('Input name : ')
    surname = Input.string('Input surname : ')
    m_name = Input.string('Input middle name : ')
    place = Input.string('Input the country or city for visited : ')
    sight = Input.string('Input the sight : ')
    transport = Input.transport('Input the type of transport : ')
    charge = Input.charge("\nInput the price of visiting the tour\n")

    tourist = Tourist.new(name, surname, m_name, place, sight, transport, charge.first, charge.last)
    @travel_agency.add_tourist(tourist)
  end

  def delete_tour
    show_tours
    index = Integer(Input.number('Input the index of tour for delete : '))
    @travel_agency.delete_tour(index)
  end

  def delete_tourist
    show_tourists
    index = Integer(Input.number('Input the index of tourist for delete : '))
    @travel_agency.delete_tourist(index)
  end

  def tours_for_tourist
    show_tourists
    index = Integer(Input.number('Input the index of tourist to compile tours : '))
    show(@travel_agency.tours_for_tourist(index))
  end

  def tourists_for_tour
    show_tours
    index = Integer(Input.number('Input the index of tour to compile tourists : '))
    show(@travel_agency.tourists_for_tour(index))
  end

  def tour_place
    place = Input.string('Input the country or city to sort : ')
    show(@travel_agency.tour_place(place))
  end

  def tour_sight
    sight = Input.string('Input the sight to sort : ')
    show(@travel_agency.tour_sight(sight))
  end

  def tour_price
    price = Input.number('Input the price to sort : ')
    show(@travel_agency.tour_price(price))
  end

  def groups
    show_groups(@travel_agency.create_groups)
  end

  def show(list)
    if list.empty?
      puts 'List empty!'
    else
      puts list
    end
  end

  def show_groups(groups)
    groups.each_with_index do |group, index|
      puts index + 1
      puts 'Empty group!' if group.empty?
      puts group
    end
  end

  def help
    @commands.each { |key, command| puts "#{key} - #{command}" }
  end
end
