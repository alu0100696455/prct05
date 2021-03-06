# Clase que representa un número fraccionario

class Fraccion
	attr_reader :num, :den

	def initialize(num, den)
		@num, @den = num, den
		simplificar
	end

	def to_s
		"#{@num}/#{@den}"
	end

	def mcd(a, b)
		if b == 0
			a
		else
			mcd(b, a % b)
		end
	end

	def simplificar
		max = mcd(@num, @den)
		if max != 0
			@num /= max
			@den /= max
		end
	end

	def+(frac = Fraccion)
		result = Fraccion.new(@num * frac.den + @den * frac.num, @den * frac.den)
		result.simplificar
		return result
	end

	def-(frac = Fraccion)
		result = Fraccion.new(@num * frac.den - @den * frac.num, @den * frac.den)
		result.simplificar
		return result
	end

	def*(frac = Fraccion)
		result = Fraccion.new(@num * frac.num, @den * frac.den)
		result.simplificar
		return result
	end

	def/(frac = Fraccion)
		result = Fraccion.new(@num * frac.den, @den * frac.num)
		result.simplificar
		return result
	end
end
