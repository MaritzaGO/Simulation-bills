require 'test_helper'

class TotalfacturaconivasControllerTest < ActionController::TestCase
  setup do
    @totalfacturaconiva = totalfacturaconivas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:totalfacturaconivas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create totalfacturaconiva" do
    assert_difference('Totalfacturaconiva.count') do
      post :create, totalfacturaconiva: { cantidad_vendida: @totalfacturaconiva.cantidad_vendida, codigo: @totalfacturaconiva.codigo, f_expedicion: @totalfacturaconiva.f_expedicion, f_vencimiento: @totalfacturaconiva.f_vencimiento, iva: @totalfacturaconiva.iva, name_cliente: @totalfacturaconiva.name_cliente, name_vendedor: @totalfacturaconiva.name_vendedor, nit_cliente: @totalfacturaconiva.nit_cliente, nit_vendedor: @totalfacturaconiva.nit_vendedor, precio_venta: @totalfacturaconiva.precio_venta, total_venta: @totalfacturaconiva.total_venta }
    end

    assert_redirected_to totalfacturaconiva_path(assigns(:totalfacturaconiva))
  end

  test "should show totalfacturaconiva" do
    get :show, id: @totalfacturaconiva
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @totalfacturaconiva
    assert_response :success
  end

  test "should update totalfacturaconiva" do
    patch :update, id: @totalfacturaconiva, totalfacturaconiva: { cantidad_vendida: @totalfacturaconiva.cantidad_vendida, codigo: @totalfacturaconiva.codigo, f_expedicion: @totalfacturaconiva.f_expedicion, f_vencimiento: @totalfacturaconiva.f_vencimiento, iva: @totalfacturaconiva.iva, name_cliente: @totalfacturaconiva.name_cliente, name_vendedor: @totalfacturaconiva.name_vendedor, nit_cliente: @totalfacturaconiva.nit_cliente, nit_vendedor: @totalfacturaconiva.nit_vendedor, precio_venta: @totalfacturaconiva.precio_venta, total_venta: @totalfacturaconiva.total_venta }
    assert_redirected_to totalfacturaconiva_path(assigns(:totalfacturaconiva))
  end

  test "should destroy totalfacturaconiva" do
    assert_difference('Totalfacturaconiva.count', -1) do
      delete :destroy, id: @totalfacturaconiva
    end

    assert_redirected_to totalfacturaconivas_path
  end
end
