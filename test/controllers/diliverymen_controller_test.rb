require 'test_helper'

class DiliverymenControllerTest < ActionController::TestCase
  setup do
    @diliveryman = diliverymen(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:diliverymen)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create diliveryman" do
    assert_difference('Diliveryman.count') do
      post :create, diliveryman: { name: @diliveryman.name, status: @diliveryman.status, weichat_id: @diliveryman.weichat_id }
    end

    assert_redirected_to diliveryman_path(assigns(:diliveryman))
  end

  test "should show diliveryman" do
    get :show, id: @diliveryman
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @diliveryman
    assert_response :success
  end

  test "should update diliveryman" do
    patch :update, id: @diliveryman, diliveryman: { name: @diliveryman.name, status: @diliveryman.status, weichat_id: @diliveryman.weichat_id }
    assert_redirected_to diliveryman_path(assigns(:diliveryman))
  end

  test "should destroy diliveryman" do
    assert_difference('Diliveryman.count', -1) do
      delete :destroy, id: @diliveryman
    end

    assert_redirected_to diliverymen_path
  end
end
