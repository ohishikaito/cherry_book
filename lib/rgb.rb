def to_hex(r,g,b)
  # # # # # # new_numbers=numbers.inject(0){ |result, n| result + n }
  # a = [r,g,b].inject('#'){ |result, n| result + n}
  [r,g,b].inject('#') do |hex, n|
    hex + n.to_s(16).rjust(2, '0')
  end
  # a = '#'
  # [r,g,b].each do |x|
  #   a += x.to_s(16).rjust(2, '0')
  # end
  # '#' +
  # r.to_s(16).rjust(2, '0') +
  # g.to_s(16).rjust(2, '0') +
  # b.to_s(16).rjust(2, '0')
end

def to_ints(n)
  # r = n[1..2]
  # g = n[3..4]
  # b = n[5..6]
  # a = []
  # b = a.map{ |c| n[i..ii]; i+=1; ii+=1 }
  # [r,g,b].each do |s|
  #   a << s.hex
  # end
  # r,g,b=n[1..2],n[3..4],n[5..6]
  # [r,g,b].map{ |s| s.hex}
  # n.scan(/\w\w/).map(&:hex)
  # n.scan(/\w\w/).map{ |s| s.hex }
  # p n
  # n.slice!(1..2).hex
  n.scan(/\w\w/).map(&:hex)
  # p [r,g,b]
  # new_naumbers=numbers.map{|n| n*10}

end
a = to_ints('#000000')
p a
# p to_hex(0,0,0)
