
class PiedraPapelTijeras
	
	attr_reader :humano, :maquina, :tiradas, :jugadas, :resultados	

	def initialize(tiradas, jugadas, resultados) 
		@humano = :papel
		@maquina = 1
		@tiradas = tiradas
		@jugadas = jugadas
		@resultados = resultados
	end
	
	def obtener_humano(cadena)
		raise TypeError unless @tiradas.include?(cadena.to_sym)	
		@humano = cadena.to_sym
	end

	def obtener_maquina()
		@maquina = @tiradas.sample
	end

end

