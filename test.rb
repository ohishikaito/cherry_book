# # # # # # # # array_and_nil = [1, 2, nil, nil, 5]
# # # # # # # # # p array_and_nil.any?(&:nil?)
# # # # # # # # p array_and_nil.class
# # # # # # # # p array_and_nil.map.with_index
# # # # # # # # p array_and_nil.map.with_index.class
# # # # # # # def hoge(**, &a)
# # # # # # #   p a
# # # # # # # end
# # # # # # # hoge(1, 2)

# # # # # # # p nil.present?
# # # # # # class User
# # # # # #   attr_accessor :name, :admin
# # # # # #   def initialize(name, admin)
# # # # # #     @name = name
# # # # # #     @admin = admin
# # # # # #   end
# # # # # # end
# # # # # # user = User.new(nil, true)
# # # # # # # p user.name
# # # # # # def check_name(user)
# # # # # #   if user.name.blank?
# # # # # #     name = "What's your name?"
# # # # # #     if true
# # # # # #       name = 'hoge'
# # # # # #     end
# # # # # #   else
# # # # # #     name = user.name
# # # # # #   end
# # # # # # end
# # # # # # # p user.name.presence
# # # # # # # p name = user.name.presence || "What's your name?"
# # # # # # # p name = user.name || "What's your name?"
# # # # # # # p name
# # # # # # # p check_name(user)
# # # # # def fuga(hoge)
# # # # #   hoge.presence || return
# # # # # end
# # # # # # a = fuga(hoge) #=> nil

# # # # require 'active_support/all'
# # # # class C
# # # #   attr :foo, true
# # # # end
# # # # hoge = nil
# # # # obj = C.new
# # # # obj.foo = nil
# # # # p obj.foo ||= true
# # # # p obj.foo = obj.foo || true
# # # # obj.foo || (obj.foo = true)
# # # # p obj.foo

# # # # # def piyo(hoge)
# # # #   # hoge || exit
# # # # # end
# # # # # hoge = nil
# # # # # piyo(hoge)

# # # # # a = false ||= nil
# # # # # a = nil ||= 1
# # # # # a = nil ||= true
# # # # # a = true ||= nil
# # # # # p a
# # # require "Date"
# # # a=Date.new
# # # p a.to_date
# # require "Time"
# # a=Time.new
# # p a.current
# p "my_book".humanize
require 'byebug'
def hoge
  byebug
end
hoge