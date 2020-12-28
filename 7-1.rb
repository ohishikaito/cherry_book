class User
  attr_reader :first_name, :last_name, :age
  attr_accessor :first_name, :full_name

  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age
  end

  # 氏名を作成するメソッド
  def full_name
    "#{first_name}#{last_name}"
  end

  def puts_age
    "#{age}"
  end

  # ユーザのデータを作成する
  users = []
  users << User.new('Alice', 'Ruby', 20)
  users << User.new('Bob', 'Python', 30)


  # ユーザのデータを表示する
  users.each do |user|
    puts "氏名:#{user.full_name}、年齢:#{user.age} puts_age:#{user.puts_age}"
  end #=>氏名:AliceRuby

end
a = User.new('Bob', 'Python', 30)
# attr_accessorがない場合
a.first_name = 'ありす' # undefined method `first_name
# attr_accessorがあると
a.full_name = 'ありす' # ありす　代入できる！