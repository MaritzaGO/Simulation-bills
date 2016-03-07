class CreateFacturas < ActiveRecord::Migration
  def change
    create_table :facturas do |t|
      t.string :codigo
      t.datetime :fechadeexpedicion
      t.datetime :fechadevencimiento
      t.string :Nombreprestadordeservicio
      t.string :NITprestadordeservicio
      t.string :retenedordeimpuesto
      t.float :valorimpuesto
      t.string :IVAincluido
      t.string :Nombrecliente
      t.string :NITcliente
      t.string :descripcionservicio
      t.float :valorservicio
      t.string :formadepago

      t.timestamps null: false
    end
  end
end
