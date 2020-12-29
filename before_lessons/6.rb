# # # # # # # # # old_syntax = <<~TEXT
# # # # # # # # #   {
# # # # # # # # #     :name => 'Alice',
# # # # # # # # #     :age=>20,
# # # # # # # # #     :gender  ==> :female
# # # # # # # # #   }
# # # # # # # # # TEXT

# # # # # # # # # # p convert_hash_syntax(old_syntax)
# # # # # # # # # a = <<~TEXT
# # # # # # # # #   12-34567
# # # # # # # # # TEXT
# # # # # # # # # puts a.gsub(/(\d{3})(\d{4})/, '\1-\2')
# # # # # # # # # p a

# # # # # # # # # text = <<-TEXT
# # # # # # # # # クープバゲットのパンは美味しかった。
# # # # # # # # # 今日はクープ バゲットさんに行きました。
# # # # # # # # # クープ　バゲットのパンは最高。
# # # # # # # # # ジャムおじさんのパン、ジャムが入ってた。
# # # # # # # # # また行きたいです。クープ・バゲット。
# # # # # # # # # クープ・バケットのパン、売り切れだった（><）
# # # # # # # # # TEXT

# # # # # # # # # p text.split(/\n/).grep(/クープ.?バ[ゲケ]ット/)

# # # # # # # # html = <<~TEXT
# # # # # # # # <select name="game_console">
# # # # # # # #   <option value="none"></option>
# # # # # # # #   <option value="wii_u" selected>Wii U</option>
# # # # # # # #   <option value="ps4">プレステ4</option>
# # # # # # # #   <option value="gb">ゲームボーイ</option>
# # # # # # # # </select>
# # # # # # # # TEXT

# # # # # # # # replaced = html.gsub(/<option value="(\w+)"(?: selected)?>(.*)<\/option>/, '\1,\2')

# # # # # # # # puts replaced

# # # # # # # # a = %i(id product_id survey_id winner_count top_display apply_start_at apply_end_at _destroy)
# # # # # # # # puts *a
# # # # # # # # b = %i[id product_id survey_id winner_count top_display apply_start_at apply_end_at _destroy]
# # # # # # # # p b

# # # # # # # # text = <<-TEXT
# # # # # # # # def hello(name)
# # # # # # # #   puts "Hello, \#{name}!"
# # # # # # # # end

# # # # # # # # hello('Alice')

# # # # # # # # hello('Bob')

# # # # # # # # hello('Carol')
# # # # # # # # TEXT

# # # # # # # # puts text.gsub(/^[ \t]+$/, '')
# # # # # # # # \tでタブとおきかえられる
# # # # # # # # name,email
# # # # # # # # alice,alice@example.com
# # # # # # # # bob,bob@example.com
# # # # # # # Feb 14 07:33:02 app/web.1:  Completed 302 Found ...
# # # # # # # Feb 14 07:36:54 heroku/router:  at=info method=...
# # # # # # # Feb 14 07:36:54 app/web.1:  Started HEAD "/" ...
# # # # # # # Feb 14 07:36:54 app/web.1:  Completed 200 ...
# # # # # # # regex = /\d/
# # # # # # # p regex.class
# # # # # # # p '123-4567' =~ /\d{3}-\d{4}/
# # # # # # text = "1999年9月9日"
# # # # # # # m = /(?<year>\d+)年(\d)月(\d)日/.match(text)
# # # # # # # p m[:year]
# # # # # # if /(?<year>\d+)年(\d)月(\d)日/ =~ text
# # # # # #   puts year # year
# # # # # # end
# # # # # p '123'.scan(/(?:\d+)/)
# # # # # text = '123-45'
# # # # # # p text[/(\d{3})/, 2]
# # # # # p text.slice!(/(\d{3})/)
# # # # # p text
# # # # # p t.split(/,/)
# # # # p t.gsub(/(?<fuga>,)(\d+)/, '\k<fuga>fuga\1aaa')
# # # hash = { ',' => ":::::" }
# # # t = '123,456-789'
# # # p t.gsub(/,/) { |m| m == ',' ? '::::' : '//////'}
# # old = <<TEXT
# # {
# #   :name => 'Alice
# #   :age =>,
# #   :gender => :female
# # }
# # TEXT
# # convert_hash_syntax(old)
# # p Regexp.new('\d{3}-\d{4}')
# # p %r{http://example\/com}
# # p 'HELLO' =~ /hello/i # 大文字小文字無視
# # regexp = Regexp.new('hello', Regexp::IGNORECASE)
# # p 'HELLO' =~ regexp
# # p "Hello\nBye   #hoge" =~ /Hello.Bye/xm # コメントと改行を「.」で認識
# text = "1977年"
# text =~ /(\d+)年/
# # p $~ # #<MatchData "1977年" 1:"1977">
# # p $& # "1977年"
# p Regexp.last_match(1) # "1977"