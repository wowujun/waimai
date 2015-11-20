require 'test_helper'

class SelleradminsControllerTest < ActionController::TestCase
  setup do
    @selleradmin = selleradmins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:selleradmins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create selleradmin" do
    assert_difference('Selleradmin.count') do
      post :create, selleradmin: { loginname: @selleradmin.loginname, name: @selleradmin.name, password_digest: @selleradmin.password_digest, status: @selleradmin.status }
    end

    assert_redirected_to selleradmin_path(assigns(:selleradmin))
  end

  test "should show selleradmin" do
    get :show, id: @selleradmin
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @selleradmin
    assert_response :success
  end

  test "should update selleradmin" do
    patch :update, id: @selleradmin, selleradmin: { loginname: @selleradmin.loginname, name: @selleradmin.name, password_digest: @selleradmin.password_digest, status: @selleradmin.status }
    assert_redirected_to selleradmin_path(assigns(:selleradmin))
  end

  test "should destroy selleradmin" do
    assert_difference('Selleradmin.count', -1) do
      delete :destroy, id: @selleradmin
    end

    assert_redirected_to selleradmins_path
  end
end
