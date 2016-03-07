json.array!(@facturas) do |factura|
  json.extract! factura, :id, :codigo, :fechadeexpedicion, :fechadevencimiento, :Nombreprestadordeservicio, :NITprestadordeservicio, :retenerdeimpuesto, :valorimpuesto, :IVAincluido, :Nombrecliente, :NITcliente, :descripcionservicio, :valorservicio, :formadepago
  json.url factura_url(factura, format: :json)
end
