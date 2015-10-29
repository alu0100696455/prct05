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
end
