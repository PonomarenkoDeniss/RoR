# n default value is 11, reuslt is 89
def fib(n=11)
  return n if (0..1).include? n
  (fib(n-1) + fib(n - 2) ) 
end

puts fib(11)
