# # # # class User
# # # #   def self.fo
# # # #     # hi
# # # #     puts "self.fo"
# # # #   end
# # # #   # private_class_method :fo
# # # #   # class << self
# # # #   #   private
# # # #   #   def hi2
# # # #   #     puts "hi"
# # # #   #   end
# # # #   # end
# # # #   def hi
# # # #     puts "hi"
# # # #   end
# # # #   # private
# # # #   def private
# # # #     puts "hoge"
# # # #   end
# # # # end
# # # # # a = User.new
# # # # # User.hi
# # # # # a.fo
# # # # a = User.new
# # # # a.private
# # # # # User.hi2

# # # class User
# # #   attr_reader :name, :weight
# # #   def initialize(name, weight)
# # #     @name = name
# # #     @weight = weight
# # #   end
# # #   def call_protected(user)
# # #     user.protectedd # ok
# # #     user.privatee # ng
# # #   end

# # #   def call_private(user)
# # #     privatee #ok
# # #     user.privatee #ng
# # #   end
# # #   private
# # #   def privatee
# # #     "private"
# # #   end
# # #   protected
# # #   def protectedd
# # #     "protected"
# # #   end
# # # end
# # # a = User.new("1",1)
# # # b = User.new('2', 100)
# # # p a.call_protected(b)
# # # # p a.call_private(b)

# # class Product
# #   CONST = [1].freeze
# #   # freeze
# # end
# # p Product::CONST
# # Product::CONST = "hoge"
# # p Product::CONST
# class User
#   def old_method=(value)
#     @value = value
#     puts "aaaa #{@value}"
#   end
#   # alias new_method old_method
#   # undef new_method
# end
# a = User.new
# a.old_method = "value"
# # a.new_method
class Pro
  attr_reader :name
  def initialize(name)
    @name = name
  end

  def ==(other)
    if other.is_a?(Pro)
      # puts name,other.name
      name == other.name
    else
      puts "tinko"
      true
    end
  end
end
a = Pro.new("1")
b = Pro.new("2")
c = Pro.new("1")
p a == b
p a == c
p a == "1"