# module Loggable
#   # private
#   # protected
#   def log(text)
#     puts "log: #{text}"
#   end

#   def pr
#     puts price
#   end
# end
# a = "a"
# # a.log('hoge')
# a.extend(Loggable)
# a.log('hoge')
# # # # # class Product
# # # # #   include Loggable
# # # # #   extend Loggable
# # # # #   def title
# # # # #     log('product-title')
# # # # #     'title'
# # # # #   end
# # # # #   def price
# # # # #     1000
# # # # #   end
# # # # #   def self.extends
# # # # #     log('self.extends')
# # # # #   end
# # # # # end
# # # # # a = Product.new
# # # # # a.pr
# # # # # # Product.log('a')

# # # # # # class User
# # # # # #   include Loggable
# # # # # #   def name
# # # # # #     log('user-name')
# # # # # #     'title'
# # # # # #   end
# # # # # # end
# # # # # # a=Product.new
# # # # # # Product.extends
# # # # # # Product.log('fuga')
# # # # # # p a.title
# # # # # # b=User.new
# # # # # # p b.name
# # # # # # b.log('hoge')
# # # # # # p Product.ancestors
# # # # p 11 <=> 2
# # # # p 1 <=> 2

# # # class Tempo
# # #   include Comparable
# # #   attr_reader :bpm
# # #   def initialize(bpm)
# # #     @bpm = bpm
# # #   end

# # #   def <=>(other)
# # #     bpm <=> other.bpm if other.is_a?(Tempo)
# # #   end

# # #   def inspect
# # #     "#{bpm}bpm"
# # #   end
# # # end
# # # # t_120 = Tempo.new(120)
# # # # t_180 = Tempo.new(180)
# # # # p t_120 > t_180
# # # tinpos = [Tempo.new(100), Tempo.new(2), Tempo.new(1)]
# # # p tinpos
# # # p tinpos.sort
# # p Object.include?(Kernel)
# # p Kernel.methods.sort
# # p Object.included_modules
# # p self
