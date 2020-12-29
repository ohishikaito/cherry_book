# # # # # # # # module Loggable
# # # # # # # #   # private
# # # # # # # #   # protected
# # # # # # # #   def log(text)
# # # # # # # #     puts "log: #{text}"
# # # # # # # #   end

# # # # # # # #   def pr
# # # # # # # #     puts price
# # # # # # # #   end
# # # # # # # # end
# # # # # # # # a = "a"
# # # # # # # # # a.log('hoge')
# # # # # # # # a.extend(Loggable)
# # # # # # # # a.log('hoge')
# # # # # # # # # # # # class Product
# # # # # # # # # # # #   include Loggable
# # # # # # # # # # # #   extend Loggable
# # # # # # # # # # # #   def title
# # # # # # # # # # # #     log('product-title')
# # # # # # # # # # # #     'title'
# # # # # # # # # # # #   end
# # # # # # # # # # # #   def price
# # # # # # # # # # # #     1000
# # # # # # # # # # # #   end
# # # # # # # # # # # #   def self.extends
# # # # # # # # # # # #     log('self.extends')
# # # # # # # # # # # #   end
# # # # # # # # # # # # end
# # # # # # # # # # # # a = Product.new
# # # # # # # # # # # # a.pr
# # # # # # # # # # # # # Product.log('a')

# # # # # # # # # # # # # class User
# # # # # # # # # # # # #   include Loggable
# # # # # # # # # # # # #   def name
# # # # # # # # # # # # #     log('user-name')
# # # # # # # # # # # # #     'title'
# # # # # # # # # # # # #   end
# # # # # # # # # # # # # end
# # # # # # # # # # # # # a=Product.new
# # # # # # # # # # # # # Product.extends
# # # # # # # # # # # # # Product.log('fuga')
# # # # # # # # # # # # # p a.title
# # # # # # # # # # # # # b=User.new
# # # # # # # # # # # # # p b.name
# # # # # # # # # # # # # b.log('hoge')
# # # # # # # # # # # # # p Product.ancestors
# # # # # # # # # # # p 11 <=> 2
# # # # # # # # # # # p 1 <=> 2

# # # # # # # # # # class Tempo
# # # # # # # # # #   include Comparable
# # # # # # # # # #   attr_reader :bpm
# # # # # # # # # #   def initialize(bpm)
# # # # # # # # # #     @bpm = bpm
# # # # # # # # # #   end

# # # # # # # # # #   def <=>(other)
# # # # # # # # # #     bpm <=> other.bpm if other.is_a?(Tempo)
# # # # # # # # # #   end

# # # # # # # # # #   def inspect
# # # # # # # # # #     "#{bpm}bpm"
# # # # # # # # # #   end
# # # # # # # # # # end
# # # # # # # # # # # t_120 = Tempo.new(120)
# # # # # # # # # # # t_180 = Tempo.new(180)
# # # # # # # # # # # p t_120 > t_180
# # # # # # # # # # tinpos = [Tempo.new(100), Tempo.new(2), Tempo.new(1)]
# # # # # # # # # # p tinpos
# # # # # # # # # # p tinpos.sort
# # # # # # # # # p Object.include?(Kernel)
# # # # # # # # # p Kernel.methods.sort
# # # # # # # # # p Object.included_modules
# # # # # # # # # p self
# # # # # # # class Second
# # # # # # #   def initialize(play, uni)
# # # # # # #     @play = play
# # # # # # #     @uni = uni
# # # # # # #   end
# # # # # # # end
# # # # # # # module Clock
# # # # # # #   class Second
# # # # # # #     def initialize(_play)
# # # # # # #       # @play = play
# # # # # # #       @bs = ::Second.new(1, 2)
# # # # # # #       puts @bs
# # # # # # #       puts "bb-second"
# # # # # # #       p self
# # # # # # #     end
# # # # # # #   end
# # # # # # # end
# # # # # # # Clock::Second.new('a')
# # # # # # module Loggable
# # # # # #   def self_log
# # # # # #     puts "logggg"
# # # # # #   end
# # # # # #   def log(text)
# # # # # #     puts "self.log:#{text}"
# # # # # #   end
# # # # # #   module_function :log
# # # # # #   AAA='A'.freeze
# # # # # # end
# # # # # # p Loggable::AAA
# # # # # # # Loggable.log('hi')
# # # # # # # class Product
# # # # # # #   # include Loggable
# # # # # # #   extend Loggable
# # # # # # #   def hi
# # # # # # #     log('aaa')
# # # # # # #   end
# # # # # # # end
# # # # # # # a=Product.new
# # # # # # # a.hi
# # # # # # # # a.log
# # # # # # # a.self_log
# # # # # # # Product.self_log
# # # # # # p Math.sqrt(73)
# # # # # class Cal
# # # # #   include Math
# # # # #   def calc(n)
# # # # #     sqrt(n)
# # # # #   end
# # # # # end
# # # # class Test
# # # #   include Kernel
# # # #   extend Kernel
# # # #   def self.extend(p)
# # # #     puts(p)
# # # #   end
# # # #   def include(p)
# # # #     puts(p)
# # # #   end
# # # # end
# # # # include1=Test.new
# # # # include1.include('include')
# # # # Test.extend('extend')
# # # # # p a.calc(2)
# # # # # Kernel.puts 'hi'
# # # # # p('hi')

# # # require 'singleton'
# # # class Conf
# # #   include Singleton
# # #   attr_accessor :base_url
# # #   def initialize
# # #     @base_url
# # #   end
# # # end
# # # # conf = Conf.new
# # # conf = Conf.instance
# # # p conf
# # # conf.base_url = "unko"
# # # p conf
# # module A
# #   def to_s
# #     "moduleA:#{super}"
# #   end
# # end
# # class Pro
# #   prepend A
# #   # include A
# #   def to_s
# #     "classPro: #{super}"
# #   end
# # end
# # a =Pro.new
# # p a.to_s
# # p Pro.ancestors
# module NameDecorator
#   def name
#     "module-name:#{super}"
#   end
# end
# class Pro
#   p self.ancestors
#   prepend(NameDecorator)
#   p self.ancestors
#   def name
#     "pro-name"
#   end
# end
# # Pro.prepend NameDecorator
# a = Pro.new
# p a.name
module SS
  refine String do
    def shuffle
      chars.shuffle.join
    end
  end
end
class User
  using SS
  def initialize(name)
    @name = name
  end
  def shuffled_name
    @name.shuffle
  end
end
a = User.new('hoge')
p a::shuffled_name
a = String.new('fuga')
# p a.chars.shuffle.join(' ')