class Parts
  attr_reader :size, :chain, :tire_size

  def initialize(args={})
    # @size = args[:size]
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

class RoadBike < Parts
  attr_reader :tape_color

  def post_initialize(args)
    @tape_color = args[:tape_color]
  end

  def local_spares
    {tape_color: tape_color}
  end

  def default_tire_size
    '23'
  end
end

class Bicycle
  attr_reader :size, :parts

  def initialize(args={})
    @size=args[:size]
    @parts=args[:parts] || Parts.new
  end

  def spares
    parts.spares
  end
end

r={tape_color: 'tape_color'}
# p(**h, **r)
a=RoadBike.new(**r)
p a.spares
b=Bicycle.new
# p b.spares