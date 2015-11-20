require 'test_helper'

class ProductclasControllerTest < ActionController::TestCase
  setup do
    @productcla = productclas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:productclas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create productcla" do
    assert_difference('Productcla.count') do
      post :create, productcla: { name: @productcla.name }
    end

    assert_redirected_to productcla_path(assigns(:productcla))
  end

  test "should show productcla" do
    get :show, id: @productcla
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @productcla
    assert_response :success
  end

  test "should update productcla" do
    patch :update, id: @productcla, productcla: { name: @productcla.name }
    assert_redirected_to productcla_path(assigns(:productcla))
  end

  test "should destroy productcla" do
    assert_difference('Productcla.count', -1) do
      delete :destroy, id: @productcla
    end

    assert_redirected_to productclas_path
  end
end
