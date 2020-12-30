print 'Text?:'
text = gets.chomp

begin
  print 'Pattern?:'
  pattern = gets.chomp

  regexp = Regexp.new(pattern)
rescue RegexpError => e
  puts e.message
  retry
end

matches = text.scan(regexp)
if matches.size > 0
  puts "matched join:#{matches.join(', ')}  matches:#{matches}"
else
  puts "No match"
end