
require 'benchmark'


def recursive_fib(n)
  return  n  if n <= 1
  recursive_fib(n - 1) + recursive_fib(n - 2)
end
puts recursive_fib(35)



def iterative_fib(n)
  a = 0
  b = 1 
  if a <= n
    n.times do 
    a,b = b,a+b
    end

    return a
  end
  
end
    
puts iterative_fib(35)



num = 35
Benchmark.bm do |x|
x.report("recursive_fib") { recursive_fib(num) }
x.report("iterative_fib")  { iterative_fib(num)  }
end