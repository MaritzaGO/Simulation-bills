class Factura < ActiveRecord::Base

	validates :codigo, uniqueness: {message: "El codigo de la factura debe ser unico"}
	validates :NITcliente, :NITprestadordeservicio, presence: true 
	validates :descripcionservicio, 
	:presence => {:message => "Usted debe ingresar una descripción del servicio"}, 
	length: {minimum: 2, maximum: 4000, :message => "La descripción debe tener entre 2 y 4000 caracteres"}
	validates :valorimpuesto, numericality: {only_integer: true}
	
end
