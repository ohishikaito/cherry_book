# class User
#   def initialize(name)
#     @name = name
#   end

#   def hello
#     _aaa = @name
#     p _aaa
#   end

#   def name
#     @name
#   end

#   def name=(v)
#     @name = v
#   end
# end

# user = User.new("hoge")
# p user.name
# user.name='fuga'
# p user.name

# class User
#   # attr_accessor :name
#   attr_reader :name
#   attr_writer :name

#   def initialize(name)
#     @name = name
#   end
# end
# a = User.new('name')
# a.name = ('2')
# p a.name
# p a.object_id
# p User.object_id
class User
  attr_accessor :hoge
  def initialize(hoge)
    @hoge = hoge
  end
end
# a = User.new("hoge")
# # p a.hoge
# # p a.name
# # p User.object_id
# b = User.new("fuga")
# p a.hoge
# p b.hoge