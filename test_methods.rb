require "minitest/autorun"
require_relative "methods.rb"

class TestMethods < Minitest::Test
    def test_assert_1_equals_1
        assert_equal(1, 1)
    end

    def test_my_rotate_returns_array
        t = []
        assert_equal(Array, t.my_rotate().class)
    end
end