require 'test_helper'

class ClasControllerTest < ActionController::TestCase
  setup do
    @cla = clas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cla" do
    assert_difference('Cla.count') do
      post :create, cla: { name: @cla.name }
    end

    assert_redirected_to cla_path(assigns(:cla))
  end

  test "should show cla" do
    get :show, id: @cla
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cla
    assert_response :success
  end

  test "should update cla" do
    patch :update, id: @cla, cla: { name: @cla.name }
    assert_redirected_to cla_path(assigns(:cla))
  end

  test "should destroy cla" do
    assert_difference('Cla.count', -1) do
      delete :destroy, id: @cla
    end

    assert_redirected_to clas_path
  end
end
