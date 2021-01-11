# # # # # # # # # # # # # # # # array_and_nil = [1, 2, nil, nil, 5]
# # # # # # # # # # # # # # # # # p array_and_nil.any?(&:nil?)
# # # # # # # # # # # # # # # # p array_and_nil.class
# # # # # # # # # # # # # # # # p array_and_nil.map.with_index
# # # # # # # # # # # # # # # # p array_and_nil.map.with_index.class
# # # # # # # # # # # # # # # def hoge(**, &a)
# # # # # # # # # # # # # # #   p a
# # # # # # # # # # # # # # # end
# # # # # # # # # # # # # # # hoge(1, 2)

# # # # # # # # # # # # # # # p nil.present?
# # # # # # # # # # # # # # class User
# # # # # # # # # # # # # #   attr_accessor :name, :admin
# # # # # # # # # # # # # #   def initialize(name, admin)
# # # # # # # # # # # # # #     @name = name
# # # # # # # # # # # # # #     @admin = admin
# # # # # # # # # # # # # #   end
# # # # # # # # # # # # # # end
# # # # # # # # # # # # # # user = User.new(nil, true)
# # # # # # # # # # # # # # # p user.name
# # # # # # # # # # # # # # def check_name(user)
# # # # # # # # # # # # # #   if user.name.blank?
# # # # # # # # # # # # # #     name = "What's your name?"
# # # # # # # # # # # # # #     if true
# # # # # # # # # # # # # #       name = 'hoge'
# # # # # # # # # # # # # #     end
# # # # # # # # # # # # # #   else
# # # # # # # # # # # # # #     name = user.name
# # # # # # # # # # # # # #   end
# # # # # # # # # # # # # # end
# # # # # # # # # # # # # # # p user.name.presence
# # # # # # # # # # # # # # # p name = user.name.presence || "What's your name?"
# # # # # # # # # # # # # # # p name = user.name || "What's your name?"
# # # # # # # # # # # # # # # p name
# # # # # # # # # # # # # # # p check_name(user)
# # # # # # # # # # # # # def fuga(hoge)
# # # # # # # # # # # # #   hoge.presence || return
# # # # # # # # # # # # # end
# # # # # # # # # # # # # # a = fuga(hoge) #=> nil

# # # # # # # # # # # # require 'active_support/all'
# # # # # # # # # # # # class C
# # # # # # # # # # # #   attr :foo, true
# # # # # # # # # # # # end
# # # # # # # # # # # # hoge = nil
# # # # # # # # # # # # obj = C.new
# # # # # # # # # # # # obj.foo = nil
# # # # # # # # # # # # p obj.foo ||= true
# # # # # # # # # # # # p obj.foo = obj.foo || true
# # # # # # # # # # # # obj.foo || (obj.foo = true)
# # # # # # # # # # # # p obj.foo

# # # # # # # # # # # # # def piyo(hoge)
# # # # # # # # # # # #   # hoge || exit
# # # # # # # # # # # # # end
# # # # # # # # # # # # # hoge = nil
# # # # # # # # # # # # # piyo(hoge)

# # # # # # # # # # # # # a = false ||= nil
# # # # # # # # # # # # # a = nil ||= 1
# # # # # # # # # # # # # a = nil ||= true
# # # # # # # # # # # # # a = true ||= nil
# # # # # # # # # # # # # p a
# # # # # # # # # # # require "Date"
# # # # # # # # # # # a=Date.new
# # # # # # # # # # # p a.to_date
# # # # # # # # # # require "Time"
# # # # # # # # # # a=Time.new
# # # # # # # # # # p a.current
# # # # # # # # # p "my_book".humanize
# # # # # # # # def hoge
# # # # # # # #   byebug
# # # # # # # # end
# # # # # # # # hoge
# # # # # # # str = "xyz"
# # # # # # # enum = str.each_byte
# # # # # # # p enum
# # # # # # # p enum.next
# # # # # # # p enum.next
# # # # # # # p enum.next
# # # # # # # # p enum.next

# # # # # # # # 2.times do
# # # # # # # #   puts enum.next
# # # # # # # # end
# # # # # # (1..5).each do |n|
# # # # # #   # next if n!=2
# # # # # #   p 'ho'
# # # # # #   next unless n==2
# # # # # #   p n
# # # # # # end

# # # # # h={hoge: 'hoge', piyo: 'piyo'}
# # # # # p a = { fuga: 'fuga', **h } #=> {:fuga=>"fuga", :hoge=>"hoge", :piyo=>"piyo"}
# # # # # # p a.merge(1)
# # # # def hoge(fish, drink: true, potato: false)
# # # #   p "#{fish},#{drink},#{potato}"
# # # # end
# # # # params = {drink: false, potato: false}
# # # # # hoge('fish', params)
# # # # # hoge('fish', drink: false, potato: false)
# # # # # hoge('fish', potato: false)
# # # # # hoge('fish')

# # # # params = {product_id: 1, survey_id: 3, hoge: 'hoge'}
# # # # def mes_h(hoge, default: true, **options)
# # # #   p "#{hoge} #{default} #{options}"
# # # # end
# # # # # mes_h('arg', default: true, **params)

# # # # def mes(a = 1, options)
# # # #   p "#{options}"
# # # # end
# # # # mes(params)
# # # def foo(t=Time.now, message = bar)
# # #   p "#{t} #{message}"
# # # end
# # # def bar
# # #   'BAAAAAAAAAAR'
# # # end
# # # foo
# # class User
# #   #
# # end
# # a = Object.const_get(Class).new
# # p a.class
# h = { foo: {bar: {baz: 1}}}

# p h.dig(:foo, :bar, :baz)      # => 1
# p h.dig(:foo, :zot, :xyz)      # => nil

# g = { foo: [10, 11, 12] }
# p g.dig(:foo, 4)               # => 11
def check(arg)
  arg ||= 'nil or false'
  p arg
end
check('hoge') #=> 'HOGE'