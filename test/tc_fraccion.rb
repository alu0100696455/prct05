require 'lib/fraccion'
require 'test-unit'

class TestFraccion < Test::Unit::TestCase
	def setup
		@frac1 = Fraccion.new(20, 60)
		@frac2 = Fraccion.new(15, 35)
	end

	def test_simplificar
		assert_equal("1/3", @frac1.to_s)
		assert_equal("3/7", @frac2.to_s)
	end

	def test_operaciones
		assert_equal("16/21", (@frac1 + @frac2).to_s)
		assert_equal("-2/21", (@frac1 - @frac2).to_s)
		assert_equal("1/7", (@frac1 * @frac2).to_s)
	end
end
