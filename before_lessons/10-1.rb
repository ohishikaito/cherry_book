# # # # # def hi
# # # # #   p '1'
# # # # #   yield('hello') if block_given?
# # # # # end
# # # # # hi do |text, a|
# # # # #   p text * 2
# # # # #   p a
# # # # # end
# # # # # hi
# def gree(&block)
#   p 1
#   # p block_given?
#   p block
#   if block_given?
#     t = block.call('hell')
#     p t
#   end
# end
# gree do |t|
#   t*2
# end
# # # # gree { |t| t*2 }
# # # # # gree
# # # proc = Proc.new { 'hello!' }
# # # p proc.call
# # proc = proc { |a=1,b=0| a+b }
# # p proc.call('a', 2)
def hi(block)
  p 'hi'
  p block.call('tin', 'tin')
  p block
  p block.lambda?
end
# proc = proc{ |a| a*2 }
# proc = ->(a,b){ a+b }
proc = lambda { |a,b| a+b }
hi(proc)