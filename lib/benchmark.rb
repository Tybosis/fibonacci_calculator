require 'benchmark'
require_relative 'fibonacci'

Benchmark.bmbm do |x|
  x.report('recursive') { Fibonacci.number(35) }
  x.report('non-recursive') { Fibonacci.no_recursion_number(35) }
end
