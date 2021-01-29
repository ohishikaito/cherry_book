# class Gear
#   # attr_reader :chainring, :cog, :wheel
#   attr_reader :chainring, :cog, :rim, :tire

#   # def initialize(chainring, cog, wheel)
#   def initialize(chainring, cog, rim, tire)
#     @chainring = chainring
#     @cog = cog
#     # @wheel = wheel
#     @rim = rim
#     @tire = tire
#   end

#   def gear_inches
#     # ratio * Wheel.new(rim, tire).diameter
#     # ratio * wheel.diameter
#     ratio * diameter
#   end

#   def ratio
#     chainring / cog.to_f
#   end

#   def wheel
#     @wheel ||= Wheel.new(rim, tire)
#   end

#   def diameter
#     wheel.diameter
#   end
# end

# class Wheel
#   attr_reader :rim, :tire
#   def initialize(rim, tire)
#     @rim = rim
#     @tire = tire
#   end

#   def diameter
#     rim + (tire * 2)
#   end
# end

# p Gear.new(52, 11, 26, 1.5).gear_inches
# # p Gear.new(52, 11, Wheel.new(26, 1.5)).gear_inches




module SomeFrameWork
  class Gear
    attr_reader :chainring, :cog, :wheel

    def initialize(args)
      # @chainring = args[:chainring]
      # @cog = args[:cog]
      # args = defaults.merge(args)
      # p args.fetch(:chainring, 52)
      # p @chainring, @cog
      @chainring = args.fetch(:chainring, 52)
      @cog = args.fetch(:cog, 11)
      @wheel = args[:wheel]
    end

    def defaults
      {chainring: 52, cog: 11}
    end

    def gear_inches
      ratio * diameter
    end

    def ratio
      chainring / cog.to_f
    end

    def wheel
      @wheel ||= Wheel.new(rim, tire)
    end

    def diameter
      wheel.diameter
    end
  end
end

class Wheel
  attr_reader :rim, :tire
  def initialize(rim, tire)
    @rim = rim
    @tire = tire
  end

  def diameter
    rim + (tire * 2)
  end
end

module GearWrapper
  def self.gear(args)
    SomeFrameWork::Gear.new(args)
  end
end

# a = { chainring: 52, cog: 11, wheel: Wheel.new(26, 1.5)}
# a = { chainring: nil, cog: nil, wheel: Wheel.new(26, 1.5)}
a = { wheel: Wheel.new(26, 1.5)}
p GearWrapper.gear(a).gear_inches
# p Gear.new(a).gear_inches







# DOF
class User
  attr_accessor :name
  def initialize(name)
    @name = name
    @user2 = User2.new('user2')
  end

  def user2
    @user2
  end

end
class User2
  attr_accessor :name
  def initialize(name)
    @name = name
    @user3 = User3.new('user3')
  end

  def user3_name
    @user3.name
  end
end
class User3
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end
user=User.new('alice')
p user.user2.user3_name

class User
  attr_accessor :name
  def initialize(name)
    @name = name
    @user2 = User2.new('user2')
  end

  def user2
    @user2
  end

end
class User2
  attr_accessor :name
  def initialize(name)
    @name = name
    @user3 = User3.new('user3')
  end

  def user3_name
    @user3.name
  end
end
class User3
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end
user=User.new('alice')
p user.user2.user3_name







class Trip
  attr_reader :bicycles, :customers, :vehicle
  def initialize(bicycles, customers, vehicle)
    @bicycles = bicycles
    @customers = customers
    @vehicle = vehicle
  end #<Trip: @bicycles="bicycles", @customers="customers", @vehicle="vehicle">
  def prepare(preparers)
    preparers.each {|preparer|
      preparer.prepare_trip(self)}
  end
end

class Driver
  def prepare_trip(trip)
    vehicle = trip.vehicle
    gas_up(vehicle)
    fill_water_tank(vehicle)
  end
  def gas_up(vehicle); p('gas_up'); end
  def fill_water_tank(vehicle); p('fill_water_tank'); end
end

class Mechanic
  def prepare_trip(trip)
    trip.bicycles.each {|bicycle|
      prepare_bicycle(bicycle)}
  end
  def prepare_bicycle(bicycle); p('prepare_bicycle'); end
end

class TripCoordinator
  def prepare_trip(trip)
    buy_food(trip.customers)
  end
  def buy_food(customers); p('buy_food'); end
end

trip = Trip.new(['bicycle1', 'bicycle2'], 'customers', 'vehicle')
prepares = [Driver.new, Mechanic.new, TripCoordinator.new]
trip.prepare(prepares)







class Bicycle
  attr_reader :size, :chain, :tire_size

  def initialize(args={})
    @size = args[:size]
    @chain = args[:chain] || default_chain
    @tire_size = args[:tire_size] || default_tire_size
    post_initialize(args)
  end

  def post_initialize(args)
    nil
  end

  def spares
    {tire_size: tire_size, chain: chain}.merge(local_spares)
  end

  def local_spares
    {}
  end

  def default_chain
    'default_chain:10-speed'
  end

  def default_tire_size
    raise NotImplementedError
  end
end

class RoadBike < Bicycle
  attr_reader :tape_color, :hogehoge

  def post_initialize(args)
    @tape_color = args[:tape_color]
    @hogehoge = args[:hogehoge]
  end

  def local_spares
    {tape_color: tape_color}
    {hogehoge: hogehoge}
  end

  def default_tire_size
    '23'
  end
end
# h={size: 'size', chain: 'chain', tire_size: 'tire_size'}
h={size: 'size'}
r={tape_color: 'tape_color', hogehoge: 'hogehoge'}
# p(**h, **r)
a=RoadBike.new(**h, **r)
p a.spares







class Schedule
  def scheduled?(schedulable, start_date, end_date)
    puts "This #{schedulable.class} is not scheduled between #{start_date} and #{end_date}"
    false
  end
end

module Schedulable
  def schedulable?(start_date, end_date)
    !scheduled?(start_date - lead_days, end_date)
  end

  def schedule
    @schedule ||= Schedule.new
  end

  def scheduled?(start_date, end_date)
    schedule.scheduled?(self, start_date, end_date)
  end

  def lead_days
    0
  end
end

class Bicycle
  include Schedulable

  def lead_days
    1
  end
end

require 'date'
starting=Date.parse('2015/09/04')
ending=Date.parse('2015/09/10')

b = Bicycle.new
p b.schedulable?(starting, ending)