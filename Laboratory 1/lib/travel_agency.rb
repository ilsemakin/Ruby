# frozen_string_literal: true

require_relative 'tour'
require_relative 'tourist'

# create Travel Agancy
class TravelAgency
  def initialize
    @list_tours = []
    @list_tourists = []
  end

  def show_tours
    list = []
    @list_tours.each { |tour| list.push(tour) }
    list
  end

  def show_tourists
    list = []
    @list_tourists.each { |tourist| list.push(tourist) }
    list
  end

  def add_tour(tour)
    @list_tours.push(tour)
  end

  def add_tourist(tourist)
    @list_tourists.push(tourist)
  end

  def delete_tour(index_tour)
    return if index_tour < 1 || index_tour - 1 > @list_tours.size

    @list_tours.delete_at(index_tour - 1)
  end

  def delete_tourist(index_tourist)
    return if index_tourist < 1 || index_tourist - 1 > @list_tourists.size

    in_tourist = @list_tourists[index_tourist - 1]
    @list_tourists.delete_if { |tourist| tourist == in_tourist }
  end

  def tours_for_tourist(index_tourist)
    return if index_tourist < 1 || index_tourist - 1 > @list_tourists.size

    tourist = @list_tourists[index_tourist - 1]
    list = []
    @list_tours.each do |tour|
      list.push(tour) if check_conditions(tour, tourist)
    end
    list
  end

  def tourists_for_tour(index_tour)
    return if index_tour < 1 || index_tour - 1 > @list_tours.size

    tour = @list_tours[index_tour - 1]
    list = []
    @list_tourists.each do |tourist|
      list.push(tourist) if check_conditions(tour, tourist)
    end
    list
  end

  def tour_place(place)
    list = []
    @list_tours.each do |tour|
      list.push(tour) if place == tour.place
    end
    list
  end

  def tour_sight(in_sight)
    list = []
    @list_tours.each do |tour|
      tour.sights.each do |sight|
        list.push(tour) if in_sight == sight
      end
    end
    list
  end

  def tour_price(price)
    list = []
    @list_tours.each do |tour|
      list.push(tour) if price == tour.price
    end
    list
  end

  def create_groups
    list = []
    @list_tours.each do |tour|
      new_list_tourists = []
      number_tourists = 0

      @list_tourists.each do |tourist|
        if check_conditions(tour, tourist)
          number_tourists += 1
          new_list_tourists.push(tourist) if number_tourists <= tour.tourists
        end
      end

      list.push(new_list_tourists)
    end
    list
  end

  private

  def sort_surname(list)
    new_list = list.sort_by(&:surname)
    new_list
  end

  def check_conditions(tour, tourist)
    charge = Range.new(tourist.min, tourist.max)
    return true if tour.place == tourist.place && tour.transport == tourist.transport &&
                   charge.include?(tour.price) && check_sight(tour, tourist) == true

    false
  end

  def check_sight(tour, tourist)
    tour.sights.each { |sight| return true if tourist.sight == sight }
    false
  end
end
