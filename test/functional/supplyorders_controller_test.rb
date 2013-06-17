require 'test_helper'

class SupplyordersControllerTest < ActionController::TestCase
  setup do
    @supplyorder = supplyorders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:supplyorders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create supplyorder" do
    assert_difference('Supplyorder.count') do
      post :create, supplyorder: { CreatedByRef: @supplyorder.CreatedByRef, ExpectedDate: @supplyorder.ExpectedDate, PaymentAmmount: @supplyorder.PaymentAmmount, PaymentDate: @supplyorder.PaymentDate, PaymentMethod: @supplyorder.PaymentMethod, ShippingFee: @supplyorder.ShippingFee, StatusRef: @supplyorder.StatusRef, SubmittedDate: @supplyorder.SubmittedDate, SupplierRef: @supplyorder.SupplierRef }
    end

    assert_redirected_to supplyorder_path(assigns(:supplyorder))
  end

  test "should show supplyorder" do
    get :show, id: @supplyorder
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @supplyorder
    assert_response :success
  end

  test "should update supplyorder" do
    put :update, id: @supplyorder, supplyorder: { CreatedByRef: @supplyorder.CreatedByRef, ExpectedDate: @supplyorder.ExpectedDate, PaymentAmmount: @supplyorder.PaymentAmmount, PaymentDate: @supplyorder.PaymentDate, PaymentMethod: @supplyorder.PaymentMethod, ShippingFee: @supplyorder.ShippingFee, StatusRef: @supplyorder.StatusRef, SubmittedDate: @supplyorder.SubmittedDate, SupplierRef: @supplyorder.SupplierRef }
    assert_redirected_to supplyorder_path(assigns(:supplyorder))
  end

  test "should destroy supplyorder" do
    assert_difference('Supplyorder.count', -1) do
      delete :destroy, id: @supplyorder
    end

    assert_redirected_to supplyorders_path
  end
end
