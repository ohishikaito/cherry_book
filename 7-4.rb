# class Product
#   DEFAULT_PRICE = 0
#   attr_reader :name, :price

#   def initialize(name, price = DEFAULT_PRICE)
#     @name = name
#     @price = price
#   end

#   def default_price
#     DEFAULT_PRICE
#   end

#   def self.default_price
#     DEFAULT_PRICE
#   end
# end

# a = Product.new('hoge')
# p a.name
# p a.price
# p a.default_price
# p Product.default_price