require 'byebug'

# module Subject
#   def initialize
#     @observers = []
#   end

#   def add_observer(observer)
#     @observers << observer
#   end

#   def delete_observer(observer)
#     @observers.delete(observer)
#   end

#   def notify_observers
#     @observers.each do |observer|
#       observer.update(self)
#     end
#   end
# end

# class Employee
#   include Subject
#   attr_reader :name, :salary

#   def initialize(name, salary)
#     super()
#     @name = name
#     @salary = salary
#   end

#   def salary=(new_salary)
#     @salary = new_salary
#     notify_observers
#   end
# end

class TaxMan
  def update(changed_employee)
    puts "#{changed_employee.name}に新しい税金の請求書を送ります"
    puts "おちんぎんは#{changed_employee.salary}で〜す！"
  end
end

module Subject
  def initialize
    @observers = []
  end

  def add_observer(&observer)
    @observers << observer
  end

  def notify_observers
    @observers.each do |observer|
      observer.call(self)
    end
  end
end

# yuji = Employee.new('yuji', 100000)
# yuji.add_observer(TaxMan.new)
# yuji.salary = 99999999

require 'observer'
class Employee
  # include Observable
  include Subject

  attr_reader :name, :salary

  def initialize(name, salary)
    @name = name
    @salary = salary
    super()
  end

  # changedメソッドで、オブジェクトに変更があったかどうかを示すフラグを設定する必要がある。
  # フラグがfalseのままだったら下のnotify_observersは如何なる通知も行わない。
  def salary=(new_salary)
    @salary = new_salary
    notify_observers # オブザーバのupdateメソッドを呼ぶ実装がされている
  end
end

yuji = Employee.new('yuji', 100000)
yuji.add_observer do |changed_employee|
  puts "Cut a new check for #{changed_employee.name}"
  puts "His salary id now #{changed_employee.salary}"
end
yuji.salary = 99999999

class Task
  attr_reader :name

  def initialize(name)
    @name = name
  end

  # 所要時間を返すメソッド
  def get_time_required
    0.0
  end

  def total_number_basic_tasks
    1
  end
end

class AddDryIngredientsTask < Task
  def initialize
    super('Add dry ingredients')
  end

  def get_time_required
    1.0 # 小麦粉と砂糖を加えるのに1分
  end
end

class MixTask < Task
  def initialize
    super('Mix that batter up!')
  end

  def get_time_required
    3.0 # 混ぜるのに3分
  end
end

class AddLiquidsTask < Task
  def initialize
    super('AddLiquidsTask!')
  end

  def get_time_required
    45451915 # 混ぜるのに3分
  end
end

# コンポジットの基底クラス
class CompositeTask < Task
  def initialize(name)
    super(name)
    @sub_tasks = []
  end

  def add_sub_task(task)
    @sub_tasks << task
  end

  def get_time_required
    time = 0.0
    @sub_tasks.each { |task| time += task.get_time_required }
    time
  end

  def total_number_basic_tasks
    total = 0
    @sub_tasks.each { |task| total += task.total_number_basic_tasks }
    total
  end
end

# コンポジットの実クラス
class MakeBatterTask < CompositeTask
  def initialize
    super('Make batter')
    add_sub_task(AddDryIngredientsTask.new)
    add_sub_task(AddLiquidsTask.new)
    add_sub_task(MixTask.new)
  end
end
cake = Task.new('cake')
p MakeBatterTask.new.get_time_required
p MakeBatterTask.new.total_number_basic_tasks

require 'byebug'

class ArrayIterator
  def initialize(array)
    @array = array
    @index = 0
  end

  def has_next?
    @index < @array.length
  end

  def item
    @array[@index]
  end

  def next_item
    value = @array[@index]
    @index += 1
    value
  end
end

array = ['red', 'green', 'blue']

i = ArrayIterator.new(array)
# while i.has_next?
#   puts "item: #{i.next_item}"
# end




class Account
  attr_accessor :name, :balance

  def initialize(name, balance=0)
    @name = name
    @balance = balance
  end

  def <=>(other) # この実装が必要
    balance <=> other.balance
  end
end

class Portfolio
  include Enumerable

  def initialize
    @accounts = []
  end

  def each(&block)
    @accounts.each(&block)
  end

  def add_account(account)
    @accounts << account
  end
end
my_portfolio = Portfolio.new
my_portfolio.add_account(Account.new('ufj', 300000))
my_portfolio.add_account(Account.new('mizuho', 500000))
# p my_portfolio
p my_portfolio.any? { |account| account.balance > 400000 } # => true
p my_portfolio.all? { |account| account.balance > 400000 } # => false

require 'byebug'
class SlickButton
  attr_accessor :command

  def initialize(&block)
    @command = block
  end

  def on_button_push
    @command.call if @command
  end
end

class Command
  attr_reader :description

  def initialize(description)
    @description = description
  end

  def execute
  end
end

class CreateFile < Command
  def initialize(path, contents)
    super("Create file: #{path}")
    @path = path
    @contents = contents
  end

  def execute
    f = File.open(@path, "w")
    f.write(@contents)
    f.close
  end
end

class CopyFile < Command
  def initialize(source, target)
    super("Copy file: #{source} to #{target}")
    @source = source
    @target = target
  end

  def execute
    FileUtils.copy(@source, @target)
  end
end

class DeleteFile < Command
  def initialize(path)
    super("Delete file: #{path}")
    @path = path
  end

  def execute
    File.delete(@path)
  end
end

class CompositeCommand < Command
  def initialize
    @commands = []
  end

  def add_command(cmd)
    @commands << cmd
  end

  def execute
    @commands.each { |cmd| cmd.execute }
  end

  def description
    description = ''
    @commands.each { |cmd| description += cmd.description + "\n" }
    # byebug
    description
  end
end

cmds = CompositeCommand.new
cmds.add_command(CreateFile.new('file1.txt', "hello world\n"))
cmds.add_command(CopyFile.new('file1.txt', 'file2.txt'))
cmds.add_command(DeleteFile.new('file1.txt'))

# p cmds.execute
puts cmds.description