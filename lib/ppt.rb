
class PiedraPapelTijeras
	
	attr_reader :humano, :maquina, :tiradas, :jugadas, :resultados, :resultado	

	def initialize(tiradas, jugadas, resultados, humano, maquina) 
		@humano = humano
		@maquina = maquina
		@tiradas = tiradas
		@jugadas = jugadas
		@resultados = resultados
		@resultado = ""
	end
	
	def obtener_humano(cadena)
		raise TypeError unless @tiradas.include?(cadena.to_sym)	
		@humano = cadena.to_sym
	end

	def obtener_maquina()
		@maquina = @tiradas.sample
	end
	
	def jugar()

		# Obtenemos la jugada de la maquina
		obtener_maquina()
		
		# Existe un empate
		if (@humano == @maquina)
			@resultado = @resultados[2]
		
		# Pierde el jugador
		elsif (@humano == @jugadas[@maquina])
			@resultado = @resultados[1]
		
		# Gana el jugador
		else
			@resultado = @resultados[0]
		end

	end

end

