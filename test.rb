# # # # # # # # # # # # # # # def a(a, b, c = 0, d = 0)
# # # # # # # # # # # # # # #   p "#{a}:#{b}:#{c}:#{d}"
# # # # # # # # # # # # # # # end

# # # # # # # # # # # # # # # def bar
# # # # # # # # # # # # # # #   'bar'
# # # # # # # # # # # # # # # end
# # # # # # # # # # # # # # # a(1, 2, Time.now, bar)

# # # # # # # # # # # # # # # # p ''.empty?
# # # # # # # # # # # # # # # # p nil.nil?
# # # # # # # # # # # # # # # # p 'hoge'.nil?

# # # # # # # # # # # # # # # p a.upcase
# # # # # # # # # # # # # # # p a
# # # # # # # # # # # # # # # p a.upcase!
# # # # # # # # # # # # # # # p a
# # # # # # # # # # # # # # # false =1
# # # # # # # # # # # # # # a = 'hoge'
# # # # # # # # # # # # # # # p a.object_id
# # # # # # # # # # # # # # b = a
# # # # # # # # # # # # # # p a.equal?(b)

# # # # # # # # # # # # # require 'date'
# # # # # # # # # # # # # p Date.today
# # # # # # # # # # # # # p Date.today.inspect
# # # # # # # # # # # # class Foo
# # # # # # # # # # # # end
# # # # # # # # # # # # p Foo.new.inspect # => "#<Foo:0x0300c868>"

# # # # # # # # # # # # class Bar
# # # # # # # # # # # #   def initialize
# # # # # # # # # # # #     @bar = 1
# # # # # # # # # # # #   end
# # # # # # # # # # # # end
# # # # # # # # # # # # p Bar.new
# # # # # # # # # # p Bar.new.inspect
# # # # # # # # # # # numbers=[1,2,3,4]
# # # # # # # # # # # # new_numbers=numbers.map{|n| n*10}
# # # # # # # # # # # # new_numbers=numbers.select{|n| n.even?}
# # # # # # # # # # # # new_numbers=numbers.reject{|n| n%3==0}
# # # # # # # # # # # # new_numbers=numbers.reject!{|n| n%3==0}
# # # # # # # # # # # # new_numbers=numbers.find{|n| n.even?}
# # # # # # # # # # # # new_numbers=numbers.inject(0){ |result, n| result + n }
# # # # # # # # # # # # p numbers
# # # # # # # # # # # p new_numbers
# # # # # # # # # # # p ['a','b','c'].map(&:upcase)
# # # # # # # # # # # p numbers.select(&:even?)

# # # # # # # # # # range = 1...5
# # # # # # # # # # p range
# # # # # # # # # # p range.include?(0)
# # # # # # # # # # p range.include?(1)
# # # # # # # # # # p range.include?(5)

# # # # # # # # # # p (1..5).include?(1)
# # # # # # # # # # a = [1,2,3,4,5]
# # # # # # # # # # p a[1..2]
# # # # # # # # # def liquid?(n)
# # # # # # # # #   p (1...100).include?(n)
# # # # # # # # # end
# # # # # # # # # liquid?(1)
# # # # # # # # def charge(n)
# # # # # # # #   case n
# # # # # # # #   when 0..5
# # # # # # # #     p 'hoge'
# # # # # # # #   else
# # # # # # # #     p 'fuga'
# # # # # # # #   end
# # # # # # # # end
# # # # # # # # charge(6)
# # # # # # # # p ('a'...'e').to_a
# # # # # # # # p ('bad'..'bag').to_a
# # # # # # # # p [*1..5]
# # # # # # # # p [1..5]
# # # # # # # a=(1..4).to_a
# # # # # # sum=0
# # # # # # # a.each{ |n| sum += n}
# # # # # # # (1..14).each {|n| sum += n}
# # # # # # a=[]
# # # # # # (1..14).step {|n| a<<n}
# # # # # # p a
# # # # # a=[1,2,3]
# # # # # b=[3,4,5]
# # # # # # p a.last(-10)
# # # # # # p a[-10]=11
# # # # # # a.delete![2]
# # # # # # p a+b
# # # # # # p a.concat(b)
# # # # # # p a|b
# # # # # # p a-b
# # # # # # p b-a
# # # # # p a&b
# # # # require 'set'
# # # # a = Set.new([1,2,3])
# # # # b = Set.new([3,4,5])
# # # # p a|b
# # # a=[]
# # # b=[2,3]
# # # a.push(1)
# # # # p a.push(b)
# # # p a.push(*b)
# # def g(*names)
# #   p "#{names.join('と')}、こんにちは"
# # end
# # g('田中さん','うんち')
# a=[1,2,3]
# p [a]
# p [*a]
# p [-1,0,*a,4,5]
# p %w(app\ le melon or)
a='hoge'
p a.chars
