# frozen_string_literal: true

require_relative 'test_helper'
require_relative '../sum_even'

class SumEvenTest < Minitest::Test
  def test_sums_only_even_integers
    assert_equal 12, sum_even([1, 2, 3, 4, 5, 6])
  end

  def test_returns_zero_when_no_evens
    assert_equal 0, sum_even([1, 3, 5])
  end

  def test_ignores_non_integers
    assert_equal 12, sum_even([1, 2, 'three', 4, nil, 6])
  end

  def test_handles_negative_and_zero
    assert_equal 2, sum_even([-5, -4, 0, 1, 2, 3, 4, 5])
  end

  def test_empty_array_returns_zero
    assert_equal 0, sum_even([])
  end

  def test_raises_when_not_array
    assert_raises(ArgumentError) { sum_even(nil) }
    assert_raises(ArgumentError) { sum_even(123) }
    assert_raises(ArgumentError) { sum_even('not an array') }
  end

  def test_power_assert_example
    actual   = sum_even([1, 2, 3, 4])
    expected = 6
    assert { actual == expected }
  end
end
