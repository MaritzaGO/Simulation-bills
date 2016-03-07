# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160304221454) do

  create_table "facturas", force: :cascade do |t|
    t.string   "codigo"
    t.datetime "fechadeexpedicion"
    t.datetime "fechadevencimiento"
    t.string   "nombreprestadordeservicio"
    t.string   "nit_prestadordeservicio"
    t.string   "retenedordeimpuesto"
    t.float    "valorimpuesto"
    t.string   "iva_incluido"
    t.float    "valor_iva"
    t.string   "nombrecliente"
    t.string   "nit_cliente"
    t.string   "descripcionservicio"
    t.float    "valor_servicio_unitario"
    t.string   "formadepago"
    t.float    "cantidad_vendida"
    t.float    "total_venta"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

end
