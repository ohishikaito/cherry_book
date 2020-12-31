# # # # # # # # # # # # # # # # a='hello'.split('').tap{|s|p s}.join('-').tap{|s|p s}
# # # # # # # # # # # # # # # a = p 1-0
# # # # # # # # # # # # # # # p a
# # # # # # # # # # # # # # # p 'hi'.method(:upcase).source_location
# # # # # # # # # # # # # # p Time.new(2017, 1, 31, 23 ,30 ,59)
# # # # # # # # # # # # # # require 'date'
# # # # # # # # # # # # # # # p Date.new(2017, 1, 31)
# # # # # # # # # # # # # # p DateTime.new(2017, 1, 31, 23 ,30 ,59)
# # # # # # # # # # # # # # # p DateTime.ancestors
# # # # # # # # # # # # File.open('./sample.txt', 'w') do |f|
# # # # # # # # # # # #   p f
# # # # # # # # # # # #   f.puts('hoge')
# # # # # # # # # # # # end

# # # # # # # # # # # file = File.open('./sample.txt', 'w')
# # # # # # # # # # # file.file?
# # # # # # # # # # require 'fileutils'
# # # # # # # # # # # FileUtils.mv('./sample2.txt', './sample.txt')
# # # # # # # # # # require 'pathname'
# # # # # # # # # # lib=Pathname.new('./lib')
# # # # # # # # # # # p lib.file?
# # # # # # # # # # # p lib.directory?
# # # # # # # # # # # p lib
# # # # # # # # # # # p lib.join('sample.txt')
# # # # # # # # # # require 'open-uri'
# # # # # # # # # # p open 'https://qiita.com/Gatsby/items/1df65eb80fa536d452c4'
# # # # # # # # # # p URI.open 'https://qiita.com/Gatsby/items/1df65eb80fa536d452c4'
# # # # # # # # # require 'csv'
# # # # # # # # # CSV.open('./lib/sample.csv', 'w') do |csv|
# # # # # # # # #   csv << ['Name', "Email"]
# # # # # # # # #   csv << ["Name-alice", 'hoge@gmail.com']
# # # # # # # # # end
# # # # # # # # # CSV.foreach('./lib/sample.csv', col_sep: "\t") do |row|
# # # # # # # # #   p "1:#{row[0]} 2:#{row[1]}"
# # # # # # # # # end
# # # # # # # # require 'json'
# # # # # # # # user = {name:'hoge', age: 21, likes: [1,2,3]}
# # # # # # # # uj = user.to_json
# # # # # # # # p uj
# # # # # # # # p JSON.parse(uj)
# # # # # # # require 'yaml'
# # # # # # # yaml = <<TEXT
# # # # # # # alice:
# # # # # # #   name: 'alice'
# # # # # # #   age: 100
# # # # # # # hoge:
# # # # # # # TEXT
# # # # # # # a=YAML.load(yaml)
# # # # # # # a['alice']['gender'] = :female
# # # # # # # a['hoge']['fuga']=:piyo
# # # # # # # p a
# # # # # # # p YAML.dump(a)
# # # # # # # p name = ENV['USER']
# # # # # # # p email = ARGV[0]
# # # # # # # ruby -e 'p [65,66].map(&:chr)'
# # # # # # require 'Faker'
# # # # # # # p Faker.methods
# # # # # # # p Faker::VERSION
# # # # # # p RUBY_VERSION
# # # # # a = 23
# # # # # p a ||= 2

# # # # def hi
# # # #   yield('hoge')
# # # # end
# # # # hi { |b| p b}
# # # def get_block(text, &block)
# # #   p block.call('text')
# # # end

# # # get_block('aaa', get_block do |t|
# # #   t*2
# # # end)
# # def gree_ja(&block)
# #   text=['おは','こん']
# #   common(text, &block)
# # end

# # def gree_en(&block)
# #   text=['good','hello']
# #   common(text, &block)
# # end

# # def common(text, &block)
# #   p "block.call:#{block.call(text[0])}"
# #   p "text0:#{text[0]} text1:#{text[1]}"
# # end
# # gree_ja {"aa"}
# # gree_ja { |t| t*2 }
# # gree_en { |t| t.upcase }
# # # メソッド呼び出し時に引数にブロックを取ってる感じ
# f=[1,2,3]
# # p e,f
# # p *f
# def calc(f)
#   p f
#   p *a = f
#   p a
# end
# calc(f)
