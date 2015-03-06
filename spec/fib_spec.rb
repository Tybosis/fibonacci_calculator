require 'spec_helper'
require 'fibonacci'

describe Fibonacci do
  it 'must be a module' do
    Fibonacci.class.must_equal Module
  end

  it 'must have a number method' do
    Fibonacci.must_respond_to(:number)
  end

  it 'number method must take an argument' do
    proc { Fibonacci.number }.must_raise ArgumentError
  end

  it 'will return something when number is passed an integer' do
    Fibonacci.number(1).wont_be_nil
  end

  it 'will give the right answer for the first ten numbers' do
    Fibonacci.number(1).must_equal  1
    Fibonacci.number(2).must_equal  1
    Fibonacci.number(3).must_equal  2
    Fibonacci.number(4).must_equal  3
    Fibonacci.number(5).must_equal  5
    Fibonacci.number(6).must_equal  8
    Fibonacci.number(7).must_equal  13
    Fibonacci.number(8).must_equal  21
    Fibonacci.number(9).must_equal  34
    Fibonacci.number(10).must_equal 55
  end

  it 'will give right answer for 20th fibonacci' do
    Fibonacci.number(20).must_equal 6765
  end

  it 'will give the right answer for the 30th fibonacci' do
    Fibonacci.number(30).must_equal 832_040
  end

  it 'will give the right answer for the 40th fibonacci' do
    Fibonacci.number(40).must_equal 102_334_155
  end

  it 'will give the right answer for the first ten numbers' do
    Fibonacci.no_recursion_number(1).must_equal  1
    Fibonacci.no_recursion_number(2).must_equal  1
    Fibonacci.no_recursion_number(3).must_equal  2
    Fibonacci.no_recursion_number(4).must_equal  3
    Fibonacci.no_recursion_number(5).must_equal  5
    Fibonacci.no_recursion_number(6).must_equal  8
    Fibonacci.no_recursion_number(7).must_equal  13
    Fibonacci.no_recursion_number(8).must_equal  21
    Fibonacci.no_recursion_number(9).must_equal  34
    Fibonacci.no_recursion_number(10).must_equal 55
  end

  it 'will give the right answer for the 60th fibonacci' do
    Fibonacci.no_recursion_number(60).must_equal 1_548_008_755_920
  end
end
