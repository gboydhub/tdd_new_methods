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

    def test_my_rotate_returns_same_data
        t = [1]
        assert_equal([1], t.my_rotate(0))
    end

    def test_my_rotate_shifts_1
        t = [1, 2]
        assert_equal([2, 1], t.my_rotate(1))
    end

    def test_my_rotate_shifts_3
        t = [1, 2, 3, 4, 5]
        assert_equal([3, 4, 5, 1, 2], t.my_rotate(3))
    end

    def test_my_rotate_shifts_negative_2
        t = [1, 2, 3, 4]
        assert_equal([3, 4, 1, 2], t.my_rotate(-2))
    end

    def test_hash_my_empty_returns_true
        h = {}
        assert_equal(true, h.my_empty?)
    end

    def test_hash_my_empty_returns_false
        h = {:hi => 2}
        assert_equal(false, h.my_empty?)
    end

    def test_string_my_reverse_returns_string
        s = ''
        assert_equal(String, s.my_reverse().class)
    end

    def test_string_my_reverse_returns_a_letter
        s = 'a'
        assert_equal('a', s.my_reverse())
    end

    def test_string_my_reverse_switches_2_letters
        s = 'ab'
        assert_equal('ba', s.my_reverse())
    end
end