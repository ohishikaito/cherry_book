# # # # # # # # # # # # # # # p NoMethodError.ancestors
# # # # # # # # # # # # # # # p NoMethodError.methods
# # # # # # # # # # # # # begin
# # # # # # # # # # # # #   1 / 0
# # # # # # # # # # # # # rescue => e
# # # # # # # # # # # # #   p e.methods
# # # # # # # # # # # # #   p e.class
# # # # # # # # # # # # #   p e.message
# # # # # # # # # # # # #   p e.full_message
# # # # # # # # # # # # #   p e.backtrace
# # # # # # # # # # # # # end
# # # # # # # # # # # # begin
# # # # # # # # # # # #   1 / '1'
# # # # # # # # # # # # rescue ZeroDivisionError
# # # # # # # # # # # #   puts "unko"
# # # # # # # # # # # # rescue TypeError
# # # # # # # # # # # #   puts 'tinko'
# # # # # # # # # # # # end
# # # # # # # # # # # begin
# # # # # # # # # # #   String.hoge
# # # # # # # # # # # rescue StandardError => e; p e.message
# # # # # # # # # # # # rescue StandardError => e
# # # # # # # # # # # #   # rescue NoMethodError => e
# # # # # # # # # # # #   p e.message
# # # # # # # # # # # #   puts 'hoge'
# # # # # # # # # # # end
# # # # # # # # # # # # p NoMethodError.ancestors
# # # # # # # # # # count=0
# # # # # # # # # # begin
# # # # # # # # # #   # puts 'start'
# # # # # # # # # #   1/0
# # # # # # # # # # rescue
# # # # # # # # # #   count+=1
# # # # # # # # # #   if true
# # # # # # # # # #     puts "#{count}"
# # # # # # # # # #     retry
# # # # # # # # # #   end
# # # # # # # # # # end
# # # # # # # # # class UnkoError < Exception
# # # # # # # # # end
# # # # # # # # # def hi
# # # # # # # # #   raise
# # # # # # # # #   # p raise(UnkoError)
# # # # # # # # # # rescue UnkoError
# # # # # # # # # #   puts "unko"
# # # # # # # # # end
# # # # # # # # # hi
# # # # # # # # # p nil.class
# # # # # # # # # p NilClass.methods.sort
# # # # # # # # # p NilClass.ancestors
# # # # # # # # require 'active_support/core_ext/class/subclasses'
# # # # # # # # # p Object.subclasses
# # # # # # # # p BasicObject.methods
# # # # # # # (1..10).each do |n|
# # # # # # #   if 5 == n
# # # # # # #     raise NoMethodError
# # # # # # #   else
# # # # # # #     p n
# # # # # # #   end
# # # # # # # rescue => e
# # # # # # #   p e
# # # # # # #   puts "owari"
# # # # # # # end
# # # # # # begin
# # # # # #   # p raise
# # # # # # rescue => e
# # # # # #   p 'rescue'
# # # # # # else
# # # # # #   p 'else'
# # # # # # ensure
# # # # # #   p "ensure"
# # # # # # end
# # # # # def test
# # # # #   count = 0
# # # # #   count += 1
# # # # #   if count > 0
# # # # #     count += 1
# # # # #     if count == 0
# # # # #       count += 1
# # # # #     end
# # # # #   end
# # # # #   # return count
# # # # # end
# # # # # p test
# # ret =
# #   begin
# #     1/0
# #     # raise NoMethodError.new('hoge')
# #   rescue ZeroDivisionError => e
# #     # p 0
# #     p e.cause
# #     # p $!
# #     # p $!.class,1
# #     # p $!.message,2
# #     # raise TypeError
# #     # raise NoMethodError
# #   # rescue TypeError => e
# #   #   raise NoMethodError
# #   # rescue NoMethodError => e
# #   #   p e
# #   ensure
# #     # p 'ensure'
# #     # return "hoge"
# #   end
# #   # p ret
# # # # AAA=[0].freeze
# # # AAA=1
# # # # AAA[0].freeze
# # # # AAA.freeze
# # # freeze
# # # AAA=1
# # # p AAA
# def method1
#   1/0
# end
# begin
#   method1
# rescue => e
#   p e.class,e.message,e.backtrace
#   p e.cause
# end