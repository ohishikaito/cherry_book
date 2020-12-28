# # # # # class User
# # # # #   attr_accessor :name

# # # # #   def initialize(name)
# # # # #     @name = name
# # # # #   end

# # # # #   def hello
# # # # #     "no-self:hello #{name}"
# # # # #   end

# # # # #   def hi
# # # # #     "self: #{self.name}"
# # # # #   end

# # # # #   def my_name
# # # # #     "@name: #{@name}"
# # # # #   end
# # # # # end
# # # # # a = User.new("hoge")
# # # # # p a
# # # # # p a.hello
# # # # # p a.hi
# # # # # p a.my_name

# # # # class User
# # # #   attr_accessor :name

# # # #   def initialize(name)
# # # #     @name = name
# # # #   end

# # # #   def name1
# # # #     name = '1'
# # # #   end

# # # #   def name2
# # # #     self.name = '2'
# # # #   end

# # # #   def name3
# # # #     @name = '3'
# # # #   end
# # # # end

# # # # a = User.new("hoge")
# # # # a.name1
# # # # p a.name
# # # # a.name2
# # # # p a.name
# # # # a.name3
# # # # p a.name
# # # # class Foo
# # # #   puts "self1: #{self}"

# # # #   def self.bar
# # # #     puts "self2: #{self}"
# # # #   end

# # # #   def baz
# # # #     puts "self3: #{self}"
# # # #   end

# # # #   # self.bar
# # # # end

# # # # # Foo.bar
# # # # foo = Foo.new
# # # # foo.baz

# # # class Foo
# # #   attr_accessor :name
# # #   def initialize(name)
# # #     @name = name
# # #   end

# # #   def self.bar(name)
# # #     puts "self.bar: #{self} name:#{name}"
# # #   end

# # #   def baz
# # #     # a = Foo.bar(name)
# # #     a = self.class.bar(name)
# # #     puts "self: #{self} name:#{name} a:#{a.class}"
# # #   end
# # # end

# # # # Foo.bar("a")
# # # foo = Foo.new("name")
# # # foo.baz

# # class User
# # end

# # user = User.new
# # # p user.to_s
# # # p User.superclass
# # # p Object.superclass
# # # p user.instance_of?(User)
# # p user.is_a?(Numeric)


# class Product
#   attr_reader :name

#   def initialize(name)
#     @name = name
#   end

#   def to_s
#     puts "name:#{@name}"
#   end
# end
# class DVD < Product
#   attr_reader :time

#   def initialize(name,time)
#     super(name)
#     @time = time
#   end

#   def to_s
#     # puts super
#     puts "super:#{super}  time:#{time}"
#   end
# end
# # a = Product.new('name')
# # a.to_s
# b = DVD.new('name2', 'time')
# b.to_s