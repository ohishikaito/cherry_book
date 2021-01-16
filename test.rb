# # # # # # # # # # class User
# # # # # # # # # #   def m
# # # # # # # # # #     p 'インスタンスメソッド'
# # # # # # # # # #   end

# # # # # # # # # #   def self.m
# # # # # # # # # #     p 'クラスメソッド'
# # # # # # # # # #   end
# # # # # # # # # # end

# # # # # # # # # # a=User.new
# # # # # # # # # # a.m
# # # # # # # # # # User.m
# # # # # # # # # class Hoge < String

# # # # # # # # # end
# # # # # # # # # a=Hoge.new
# # # # # # # # # p a.class
# # # # # # # # # p a.is_a?(String)
# # # # # # # class User
# # # # # # #   attr_accessor :name
# # # # # # #   def initialize(name)
# # # # # # #     @name = name
# # # # # # #   end
# # # # # # # end
# # # # # # # p User.ancestors

# # # # # # # # def piyo(user: user, **a)
# # # # # # # #   p user
# # # # # # # #   p a[:hoge]
# # # # # # # #   p a.to_s
# # # # # # # # end
# # # # # # # # user = User.new('name')
# # # # # # # # module Object::Fuga
# # # # # # # #   def hello
# # # # # # # #     p 'hello'
# # # # # # # #   end
# # # # # # # # end
# # # # # # # # a={hoge: :symbol_hoge, fuga: Fuga}
# # # # # # # # p a
# # # # # # # # # user = {user: 'user'}
# # # # # # # # piyo(user: user, **a)
# # # # # # # # hoge = 'hoge'
# # # # # # # # def hoge.hello
# # # # # # # #   p 'hoge!'
# # # # # # # # end
# # # # # # # # hoge.hello #=> 'hoge!'
# # # # # # module Hoge
# # # # # #   def hello
# # # # # #     p 'hello'
# # # # # #   end
# # # # # # end
# # # # # # class Object
# # # # # #   include Hoge
# # # # # # end
# # # # # # a=1
# # # # # # a.hello
# # # # # # p Object.ancestors
# # # # # # p Hoge.class
# # # # # module A
# # # # #   class B
# # # # #   end
# # # # # end
# # # # # a=A::B.new
# # # # # p a.class
# # # # # class C < A::B

# # # # # end
# # # # # p c = C.new
# # # # # p C.ancestors
# # # # module A
# # # #   def hoge
# # # #     p 'hoge'
# # # #   end
# # # # end
# # # # class B
# # # #   include A
# # # # end
# # # # b=B.new
# # # # b.hoge
# # # class OtintinError < StandardError

# # # end
# # # begin
# # # raise OtintinError
# # # rescue OtintinError=> e
# # #   p e
# # # end
# # p NoMethodError.ancestors

# def gree
#   p 'おは'
#   yield
# end

# gree do
#   p "こん"
# end
# gree
# a=Proc.new { |a,b,c,d,e,f,g| 'hoge' }
# p a.methods.sort
# p a.arity
# p Proc.ancestors
p Object.superclass