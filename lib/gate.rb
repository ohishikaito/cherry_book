class Gate
  # attr_accessor :umeda, :juso
  STATIONS = [:umeda, :juso, :mikuni]
  FARES = [150, 190]

  def initialize(name)
    @name = name
  end

  def enter(ticket) # ticker.150
    ticket.stamp(@name) # umeda
  end

  def exit(ticket)
    fare = calc_fare(ticket)
    fare <= ticket.fare
  end

  # 文字列に置き換えてやったほうが分かりやすそう
  def calc_fare(ticket)
    from = STATIONS.index(ticket.stamped_at) # umeda(0)
    to = STATIONS.index(@name) # mikuni?(2)
    distance = to - from # 2 - 0 = 2
    FARES[distance - 1] # 2 - 1 = 1(190)
  end
end
9264