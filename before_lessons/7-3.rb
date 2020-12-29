class User
  attr_accessor :name
  def initialize(name)
    @name = name
  end

  class << self
    # def self.create_users(names)
    def create_users(names)
      names.map do |name|
        User.new(name)
      end
    end
  end

  def hello
    "#{@name}"
  end
end
names=["Alice","tinko","unko"]
users = User.create_users(names)
users.each do |user|
  puts user.hello
end

p users[0].respond_to?("hello")
