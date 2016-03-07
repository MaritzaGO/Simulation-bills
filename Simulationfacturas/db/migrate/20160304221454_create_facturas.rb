class CreateFacturas < ActiveRecord::Migration
  def change
    create_table :facturas do |t|
      t.string :codigo
      t.datetime :fechadeexpedicion
      t.datetime :fechadevencimiento
      t.string :nombreprestadordeservicio
      t.string :nit_prestadordeservicio
      t.string :retenedordeimpuesto
      t.float :valorimpuesto
      t.string :iva_incluido
      t.float :valor_iva
      t.string :nombrecliente
      t.string :nit_cliente
      t.string :descripcionservicio
      t.float :valor_servicio_unitario
      t.string :formadepago
      t.float :cantidad_vendida
      t.float :total_venta

      t.timestamps null: false
    end
  end
end
