# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # a='hello'.split('').tap{|s|p s}.join('-').tap{|s|p s}
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # a = p 1-0
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # p a
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # p 'hi'.method(:upcase).source_location
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # p Time.new(2017, 1, 31, 23 ,30 ,59)
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # require 'date'
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # p Date.new(2017, 1, 31)
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # p DateTime.new(2017, 1, 31, 23 ,30 ,59)
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # p DateTime.ancestors
# # # # # # # # # # # # # # # # # # # # # # # # # # # File.open('./sample.txt', 'w') do |f|
# # # # # # # # # # # # # # # # # # # # # # # # # # #   p f
# # # # # # # # # # # # # # # # # # # # # # # # # # #   f.puts('hoge')
# # # # # # # # # # # # # # # # # # # # # # # # # # # end

# # # # # # # # # # # # # # # # # # # # # # # # # # file = File.open('./sample.txt', 'w')
# # # # # # # # # # # # # # # # # # # # # # # # # # file.file?
# # # # # # # # # # # # # # # # # # # # # # # # # require 'fileutils'
# # # # # # # # # # # # # # # # # # # # # # # # # # FileUtils.mv('./sample2.txt', './sample.txt')
# # # # # # # # # # # # # # # # # # # # # # # # # require 'pathname'
# # # # # # # # # # # # # # # # # # # # # # # # # lib=Pathname.new('./lib')
# # # # # # # # # # # # # # # # # # # # # # # # # # p lib.file?
# # # # # # # # # # # # # # # # # # # # # # # # # # p lib.directory?
# # # # # # # # # # # # # # # # # # # # # # # # # # p lib
# # # # # # # # # # # # # # # # # # # # # # # # # # p lib.join('sample.txt')
# # # # # # # # # # # # # # # # # # # # # # # # # require 'open-uri'
# # # # # # # # # # # # # # # # # # # # # # # # # p open 'https://qiita.com/Gatsby/items/1df65eb80fa536d452c4'
# # # # # # # # # # # # # # # # # # # # # # # # # p URI.open 'https://qiita.com/Gatsby/items/1df65eb80fa536d452c4'
# # # # # # # # # # # # # # # # # # # # # # # # require 'csv'
# # # # # # # # # # # # # # # # # # # # # # # # CSV.open('./lib/sample.csv', 'w') do |csv|
# # # # # # # # # # # # # # # # # # # # # # # #   csv << ['Name', "Email"]
# # # # # # # # # # # # # # # # # # # # # # # #   csv << ["Name-alice", 'hoge@gmail.com']
# # # # # # # # # # # # # # # # # # # # # # # # end
# # # # # # # # # # # # # # # # # # # # # # # # CSV.foreach('./lib/sample.csv', col_sep: "\t") do |row|
# # # # # # # # # # # # # # # # # # # # # # # #   p "1:#{row[0]} 2:#{row[1]}"
# # # # # # # # # # # # # # # # # # # # # # # # end
# # # # # # # # # # # # # # # # # # # # # # # require 'json'
# # # # # # # # # # # # # # # # # # # # # # # user = {name:'hoge', age: 21, likes: [1,2,3]}
# # # # # # # # # # # # # # # # # # # # # # # uj = user.to_json
# # # # # # # # # # # # # # # # # # # # # # # p uj
# # # # # # # # # # # # # # # # # # # # # # # p JSON.parse(uj)
# # # # # # # # # # # # # # # # # # # # # # require 'yaml'
# # # # # # # # # # # # # # # # # # # # # # yaml = <<TEXT
# # # # # # # # # # # # # # # # # # # # # # alice:
# # # # # # # # # # # # # # # # # # # # # #   name: 'alice'
# # # # # # # # # # # # # # # # # # # # # #   age: 100
# # # # # # # # # # # # # # # # # # # # # # hoge:
# # # # # # # # # # # # # # # # # # # # # # TEXT
# # # # # # # # # # # # # # # # # # # # # # a=YAML.load(yaml)
# # # # # # # # # # # # # # # # # # # # # # a['alice']['gender'] = :female
# # # # # # # # # # # # # # # # # # # # # # a['hoge']['fuga']=:piyo
# # # # # # # # # # # # # # # # # # # # # # p a
# # # # # # # # # # # # # # # # # # # # # # p YAML.dump(a)
# # # # # # # # # # # # # # # # # # # # # # p name = ENV['USER']
# # # # # # # # # # # # # # # # # # # # # # p email = ARGV[0]
# # # # # # # # # # # # # # # # # # # # # # ruby -e 'p [65,66].map(&:chr)'
# # # # # # # # # # # # # # # # # # # # # require 'Faker'
# # # # # # # # # # # # # # # # # # # # # # p Faker.methods
# # # # # # # # # # # # # # # # # # # # # # p Faker::VERSION
# # # # # # # # # # # # # # # # # # # # # p RUBY_VERSION
# # # # # # # # # # # # # # # # # # # # a = 23
# # # # # # # # # # # # # # # # # # # # p a ||= 2

# # # # # # # # # # # # # # # # # # # def hi
# # # # # # # # # # # # # # # # # # #   yield('hoge')
# # # # # # # # # # # # # # # # # # # end
# # # # # # # # # # # # # # # # # # # hi { |b| p b}
# # # # # # # # # # # # # # # # # # def get_block(text, &block)
# # # # # # # # # # # # # # # # # #   p block.call('text')
# # # # # # # # # # # # # # # # # # end

# # # # # # # # # # # # # # # # # # get_block('aaa', get_block do |t|
# # # # # # # # # # # # # # # # # #   t*2
# # # # # # # # # # # # # # # # # # end)
# # # # # # # # # # # # # # # # # def gree_ja(&block)
# # # # # # # # # # # # # # # # #   text=['おは','こん']
# # # # # # # # # # # # # # # # #   common(text, &block)
# # # # # # # # # # # # # # # # # end

# # # # # # # # # # # # # # # # # def gree_en(&block)
# # # # # # # # # # # # # # # # #   text=['good','hello']
# # # # # # # # # # # # # # # # #   common(text, &block)
# # # # # # # # # # # # # # # # # end

# # # # # # # # # # # # # # # # # def common(text, &block)
# # # # # # # # # # # # # # # # #   p "block.call:#{block.call(text[0])}"
# # # # # # # # # # # # # # # # #   p "text0:#{text[0]} text1:#{text[1]}"
# # # # # # # # # # # # # # # # # end
# # # # # # # # # # # # # # # # # gree_ja {"aa"}
# # # # # # # # # # # # # # # # # gree_ja { |t| t*2 }
# # # # # # # # # # # # # # # # # gree_en { |t| t.upcase }
# # # # # # # # # # # # # # # # # # メソッド呼び出し時に引数にブロックを取ってる感じ
# # # # # # # # # # # # # # # # f=[1,2,3]
# # # # # # # # # # # # # # # # # p e,f
# # # # # # # # # # # # # # # # # p *f
# # # # # # # # # # # # # # # # def calc(f)
# # # # # # # # # # # # # # # #   p f
# # # # # # # # # # # # # # # #   p *a = f
# # # # # # # # # # # # # # # #   p a
# # # # # # # # # # # # # # # # end
# # # # # # # # # # # # # # # # calc(f)
# # # # # # # # # # # # # # # # if a = nil
# # # # # # # # # # # # # # #   # p a
# # # # # # # # # # # # # # # # end
# # # # # # # # # # # # # # # CONTACT_PHONE_NUMBER = 1.freeze
# # # # # # # # # # # # # # # # CONTACT_PHONE_NUMBER.freeze
# # # # # # # # # # # # # # # CONTACT_PHONE_NUMBER = 2 # => RuntimeError: can't modify frozen String
# # # # # # # # # # # # # # # p CONTACT_PHONE_NUMBER
# # # # # # # # # # # # # # def find_user
# # # # # # # # # # # # # #   'suga'
# # # # # # # # # # # # # # end
# # # # # # # # # # # # # # user = find_user
# # # # # # # # # # # # # user = nil
# # # # # # # # # # # # # # p user&.upcase # => nil
# # # # # # # # # # # # # p user.upcase
# # # # # # # # # # # # array = [
# # # # # # # # # # # #   'hoge',
# # # # # # # # # # # #   'fuga',
# # # # # # # # # # # #   'piyo',
# # # # # # # # # # # # ]
# # # # # # # # # # a = ['a','b','c']
# # # # # # # # # # a = 'a'
# # # # # # # # # # # p a.map(&:upcase)
# # # # # # # # # # p Array(a).each(&:upcase)
# # # # # # # # # ans_array = 14.divmod(3)
# # # # # # # # # p ans_array
# # # # # # # # # puts "商は#{ans_array[0]}"     # => 商は4
# # # # # # # # # puts "あまりは#{ans_array[1]}" # => あまりは2
# # # # # # # # # keyとvalueを配列として受け取る
# # # # # # # # {name: 'Tom', email: 'hoge@hoge.com'}.each do |key_and_value|
# # # # # # # #   p key_and_value
# # # # # # # #   puts "key: #{key_and_value[0]}"
# # # # # # # #   puts "value: #{key_and_value[1]}"
# # # # # # # # end
# # # # # # # # keyとvalueを別々の変数で受け取る
# # # # # # # {name: 'Tom', email: 'hoge@hoge.com'}.each do |key, value|
# # # # # # #   puts "key: #{key}"
# # # # # # #   puts "value: #{value}"
# # # # # # # end
# # # # # # test = false
# # # # # # test = 'fugaaaaaaaaaaaa'
# # # # # # if test.nil?
# # # # # #   p 'hoge'
# # # # # # else
# # # # # #   p test
# # # # # # end

# # # # # # # p test ||= 'hoge'
# # # # # p Kernel.methods.sort
# # # # class User
# # # #   attr_accessor :users
# # # #   def initialize(users)
# # # #     @users = users
# # # #   end
# # # #   def admin?
# # # #     @users.select do |u|
# # # #       u[:admin]
# # # #     end
# # # #     # p self
# # # #     # user[:admin]
# # # #   end
# # # # end
# # # # users = [
# # # #   {a: "hoge", admin: true},
# # # #   {b: "fuga", admin: false},
# # # #   {c: "piyo", admin: true},
# # # # ]
# # # # users = User.new(users)
# # # # # p users
# # # # # a = Array(users).map { |user| user.admin?}
# # # # a = users.admin?
# # # # p a
# # # # # Array(users).select(&:admin?)

# # # users = [
# # #   {name: "hoge", admin: true},
# # #   {name: "fuga", admin: false},
# # #   {name: "piyo", admin: true},
# # # ]
# # # def admin?(user)
# # #   return if user[:admin]
# # # end
# # # a = users.each do |user|
# # #   p user
# # #   user[:name].admin?(user)
# # # end
# # def bar
# #   p 'bar'
# # end
# # bar
# # p defined?(bar)
# # undef bar
# # p defined?(bar)

# nested_array = [[1, 2, 3], [4, 5, 6]]
# p mapped_array = nested_array.map {|array| array.map {|n| n * 10 } }
# # => [[10, 20, 30], [40, 50, 60]]
# p flat_array = mapped_array.flatten
# # => [10, 20, 30, 40, 50, 60]

# nested_array = [[1, 2, 3], [4, 5, 6]]
# flat_array = nested_array.flat_map {|array| array.map {|n| n * 10 } }
