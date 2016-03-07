json.array!(@facturas) do |factura|
  json.extract! factura, :id, :codigo, :fechadeexpedicion, :fechadevencimiento, :nombreprestadordeservicio, :nit_prestadordeservicio, :retenedordeimpuesto, :valorimpuesto, :iva_incluido, :valor_iva, :nombrecliente, :nit_cliente, :descripcionservicio, :valor_servicio_unitario, :formadepago, :cantidad_vendida, :total_venta
  json.url factura_url(factura, format: :json)
end
