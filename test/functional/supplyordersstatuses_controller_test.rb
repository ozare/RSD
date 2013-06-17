require 'test_helper'

class SupplyordersstatusesControllerTest < ActionController::TestCase
  setup do
    @supplyordersstatus = supplyordersstatuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:supplyordersstatuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create supplyordersstatus" do
    assert_difference('Supplyordersstatus.count') do
      post :create, supplyordersstatus: { Status: @supplyordersstatus.Status }
    end

    assert_redirected_to supplyordersstatus_path(assigns(:supplyordersstatus))
  end

  test "should show supplyordersstatus" do
    get :show, id: @supplyordersstatus
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @supplyordersstatus
    assert_response :success
  end

  test "should update supplyordersstatus" do
    put :update, id: @supplyordersstatus, supplyordersstatus: { Status: @supplyordersstatus.Status }
    assert_redirected_to supplyordersstatus_path(assigns(:supplyordersstatus))
  end

  test "should destroy supplyordersstatus" do
    assert_difference('Supplyordersstatus.count', -1) do
      delete :destroy, id: @supplyordersstatus
    end

    assert_redirected_to supplyordersstatuses_path
  end
end
