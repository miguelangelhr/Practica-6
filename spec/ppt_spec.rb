require 'ppt'

describe PiedraPapelTijeras do

	before :each do
		@tiradas_esp = [:piedra, :papel, :tijeras]
		@jugadas_esp = {:piedra => :tijeras, :papel => :piedra, :tijeras => :papel}
		@resultados_esp = [:gana, :pierde, :empata]
		@ppt_obj = PiedraPapelTijeras.new(@tiradas_esp, @jugadas_esp, @resultados_esp)
	end
	
	it "Debe exitir una jugada del humano" do
		@ppt_obj.humano.should == :papel
	end

	it "Debe existir una jugada de la maquina" do
		@ppt_obj.maquina.should == 1
	end

	it "Debe existir una lista de tiradas validas" do
		@ppt_obj.tiradas.should == @tiradas_esp
	end

	it "Debe existir una lista de jugadas posibles" do
		@ppt_obj.jugadas.should == @jugadas_esp
	end
	
	it "Se debe invocar al metodo obtener_humano() para recoger la tirada del humano y que esta sea valida" do
		@ppt_obj.obtener_humano("papel").should == :papel
		@ppt_obj.obtener_humano("piedra").should == :piedra
		@ppt_obj.obtener_humano("tijeras").should == :tijeras
	end

	it "Se debe invocar al metodo obtener_maquina() para recoger la tirada de la maquina y que esta sea valida" do
		@ppt_obj.obtener_maquina().should == :papel||:tijeras||:piedra
	end

	it "Debe existir una lista de resultados de un juego desde el punto de vista de la maquina" do
		@ppt_obj.resultados.should == @resultados_esp
	end

end
