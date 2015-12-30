require 'test_helper'

class ProductclasProductsControllerTest < ActionController::TestCase
  setup do
    @productclas_product = productclas_products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:productclas_products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create productclas_product" do
    assert_difference('ProductclasProduct.count') do
      post :create, productclas_product: { product_id: @productclas_product.product_id, productcla_id: @productclas_product.productcla_id }
    end

    assert_redirected_to productclas_product_path(assigns(:productclas_product))
  end

  test "should show productclas_product" do
    get :show, id: @productclas_product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @productclas_product
    assert_response :success
  end

  test "should update productclas_product" do
    patch :update, id: @productclas_product, productclas_product: { product_id: @productclas_product.product_id, productcla_id: @productclas_product.productcla_id }
    assert_redirected_to productclas_product_path(assigns(:productclas_product))
  end

  test "should destroy productclas_product" do
    assert_difference('ProductclasProduct.count', -1) do
      delete :destroy, id: @productclas_product
    end

    assert_redirected_to productclas_products_path
  end
end
