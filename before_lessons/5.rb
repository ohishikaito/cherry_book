# # # # # # # # # # # # # # # # # # convert_length(1, 'm', 'in')
# # # # # # # # # # # # # # # # # # a={'japan'=>'yen','us'=>'dollar','india'=>'rupee'}
# # # # # # # # # # # # # # # # # # a={'japan'=>'yen','us'=>'dollar','india'=>'rupee'}
# # # # # # # # # # # # # # # # # # p a.class
# # # # # # # # # # # # # # # # # # a['us']='unti'
# # # # # # # # # # # # # # # # # # # a.each_with_index do |(key, value), i|
# # # # # # # # # # # # # # # # # # a.each_with_index do |key_value, i|
# # # # # # # # # # # # # # # # # # # a.each_with_index do |key, value, i|
# # # # # # # # # # # # # # # # # #   # p "k:#{key}, v:#{value}, #{i}"
# # # # # # # # # # # # # # # # # #   p "k:#{key_value[0]}, v:#{key_value[1]}, #{i}"
# # # # # # # # # # # # # # # # # # end
# # # # # # # # # # # # # # # # # a={'japan'=>'yen','us'=>'dollar','india'=>'rupee'}
# # # # # # # # # # # # # # # # # b={'japan'=>'yen','india'=>'rupee','us'=>'dollar'}
# # # # # # # # # # # # # # # # # # p a==b
# # # # # # # # # # # # # # # # # p a.delete('japan1'){ |key| "hoge: #{key}"}
# # # # # # # # # # # # # # # # a = :apple
# # # # # # # # # # # # # # # # b = 'apple'
# # # # # # # # # # # # # # # # # a = 'apple'
# # # # # # # # # # # # # # # # # b = 'apple'
# # # # # # # # # # # # # # # # # p a.class
# # # # # # # # # # # # # # # # # p "apple" == "apple"
# # # # # # # # # # # # # # # # # p a.object_id
# # # # # # # # # # # # # # # # # p b.object_id
# # # # # # # # # # # # # # # # # a.upcase!
# # # # # # # # # # # # # # # # # p 'apple'.methods
# # # # # # # # # # # # # # # # p a.methods
# # # # # # # # # # # # # # # a = {japan: 'yen', us: 'dollar'}
# # # # # # # # # # # # # # # p a[:us]
# # # # # # # # # # # # # # # p hash={'abc'=>123,def: 45 }
# # # # # # # # # # # # # # # p hash['abc']
# # # # # # # # # # # # # # a = { b: {c: 'd', e: 1123}}
# # # # # # # # # # # # # # p a
# # # # # # # # # # # # # # p a[:b]
# # # # # # # # # # # # # # p a[:b][:c]
# # # # # # # # # # # # # # p a[:b][:e]
# # # # # # # # # # # def buy(a: true, b: false)
# # # # # # # # # # #   p "a:#{a}   b:#{b}"
# # # # # # # # # # # end
# # # # # # # # # # # # # buy('a', 'b')

# # # # # # # # # # # def buy(menu, drink: true, potato: true, **others)
# # # # # # # # # # # def buy(menu, options = {})
# # # # # # # # # # def buy(menu, options)
# # # # # # # # # #   p options
# # # # # # # # # #   # p others
# # # # # # # # # #   # menu = :aaa
# # # # # # # # # #   # p menu.class
# # # # # # # # # #   # p "#{drink}".class
# # # # # # # # # #   # p potato.class
# # # # # # # # # #   # drink = options[:drink1]
# # # # # # # # # #   # potato = options[:potato]
# # # # # # # # # #   # p drink, potato
# # # # # # # # # # end
# # # # # # # # # # buy('cheese', drink: true, potato: false, salada: "chiken")

# # # # # # # # # # # # params = {drink: true, potato: false}
# # # # # # # # # # # # buy('cheese', params)
# # # # # # # # # # a = { japan: 'yen', us: 'dollar' }
# # # # # # # # # # # # p a.key?(:japan)
# # # # # # # # # # # # p a.member?(:japan)
# # # # # # # # # # # # p a.values
# # # # # # # # # # # # p a.key?('japan')
# # # # # # # # # # # # b= {hoge: 'fuga'}.merge(a)
# # # # # # # # # # # b= {hoge: 'fuga', **a}
# # # # # # # # # # # p b
# # # # # # # # # a = { japan: 'yen', us: 'dollar' }
# # # # # # # # # # b = a.to_h
# # # # # # # # # # # b = b.to_h
# # # # # # # # # # p a,b
# # # # # # # # # # b = Array[a]
# # # # # # # # # b =[[:japan2, "yen"], [:us2, "dollar"]]
# # # # # # # # # p Hash[*b]
# # # # # # # # # p b
# # # # # # # h=Hash.new {"hello"}
# # # # # # # # p h[:foo111].object_id
# # # # # # # # p h[:hoge].object_id
# # # # # # # h[:foo111]
# # # # # # # h[:hoge]
# # # # # # # p h
# # # # # # # # h=Hash.new {|hash,key| hash[key]='hello'}
# # # # # # # # p h
# # # # # # # # p h[:foo]
# # # # # # # # p h[:bar]
# # # # # # # # p h
# # # # # name = "Alice"
# # # # # # p :"#{name.upcase}"
# # # # # # p %i(ruby is fun)
# # # # # b = name.to_sym
# # # # # p b
# # # # # p b.to_s
# # # # a = 'apple'
# # # # # p 'apple'.respond_to?('include?') # true
# # # # b = {hoge: "fuga"}
# # # # p b.respond_to?('to_s') # true
# # # # # p :a.class

# # # def a(b)
# # #   c={japan: 'yen'}
# # #   c[b]
# # # end
# # # c=a(:japan) # これと
# # # if c = a(:japan) #これは同じ意味
# # #   c.upcase # このif文とupcaseも同じ
# # # end
# # # c = c&.upcase # このif文とupcaseも同じ（ぼっち演算子）
# # # puts c
# # a = nil
# # p a ||= 10 # 10
# # b = 1
# # p b ||= 10 # 1
# # p !!true # true
# # p !!1 # true
# # p !!false # false
# def user_exists?
#   # user = "a"
#   # if user
#   #   true
#   # else
#   #   false
#   # end

#   !!true # trueが変える
#   !!false # falseが変える
# end
# p user_exists?
