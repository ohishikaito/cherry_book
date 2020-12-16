def fizz_buzz(n)
  if n % 15 == 0
    p 'Fizz Buzz'
  elsif n % 3 == 0
    p 'Fizz'
  elsif n % 5 == 0
    p 'Buzz'
  else
    p n.to_s
  end
end

(1..100).each do |i|
  # fizz_buzz(i)
end
