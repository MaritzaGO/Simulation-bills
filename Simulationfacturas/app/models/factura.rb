class Factura < ActiveRecord::Base

	validates :codigo, uniqueness: {message: "El codigo de la factura debe ser unico"}
	validates :nit_cliente, :nit_prestadordeservicio, presence: true, numericality: {only_integer: true} 
	validates :descripcionservicio, 
	:presence => {:message => "Usted debe ingresar una descripción del servicio"}, 
	length: {minimum: 2, maximum: 4000, :message => "La descripción debe tener entre 2 y 4000 caracteres"}


	#Callbacks

	before_create :calcular_valor_iva

	before_create :calcular_total_venta


	def calcular_valor_iva
		self.valor_iva = self.cantidad_vendida * self.valor_servicio_unitario * 0.16
	end

	def calcular_total_venta
		self.total_venta = self.cantidad_vendida * self.valor_servicio_unitario + self.valor_iva
	end
end
	

