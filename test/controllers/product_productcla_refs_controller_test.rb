require 'test_helper'

class ProductProductclaRefsControllerTest < ActionController::TestCase
  setup do
    @product_productcla_ref = product_productcla_refs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:product_productcla_refs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product_productcla_ref" do
    assert_difference('ProductProductclaRef.count') do
      post :create, product_productcla_ref: { product_id: @product_productcla_ref.product_id, productcla_id: @product_productcla_ref.productcla_id }
    end

    assert_redirected_to product_productcla_ref_path(assigns(:product_productcla_ref))
  end

  test "should show product_productcla_ref" do
    get :show, id: @product_productcla_ref
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product_productcla_ref
    assert_response :success
  end

  test "should update product_productcla_ref" do
    patch :update, id: @product_productcla_ref, product_productcla_ref: { product_id: @product_productcla_ref.product_id, productcla_id: @product_productcla_ref.productcla_id }
    assert_redirected_to product_productcla_ref_path(assigns(:product_productcla_ref))
  end

  test "should destroy product_productcla_ref" do
    assert_difference('ProductProductclaRef.count', -1) do
      delete :destroy, id: @product_productcla_ref
    end

    assert_redirected_to product_productcla_refs_path
  end
end
