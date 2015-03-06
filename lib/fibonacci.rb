# module to hold the number method
module Fibonacci
  # returns nth fibonacci number using recursion
  class << self
    def number(n)
      return 1 if n == 1 || n == 2
      number(n - 2) + number(n - 1)
    end

    # Returns nth fibonacci number using following formula
    # fib(n) = (phi**n - (-phi)**-n) / sqrt(5)
    def no_recursion_number(n)
      positive_phi = (1 + Math.sqrt(5)) / 2
      negative_phi = (1 - Math.sqrt(5)) / 2
      multiplier   = positive_phi**n - negative_phi**2
      (multiplier / Math.sqrt(5)).round
    end
  end
end
