require 'test_helper'

class IndentDetailsControllerTest < ActionController::TestCase
  setup do
    @indent_detail = indent_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:indent_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create indent_detail" do
    assert_difference('IndentDetail.count') do
      post :create, indent_detail: { indent_id: @indent_detail.indent_id, name: @indent_detail.name, num: @indent_detail.num, price: @indent_detail.price, product_id: @indent_detail.product_id }
    end

    assert_redirected_to indent_detail_path(assigns(:indent_detail))
  end

  test "should show indent_detail" do
    get :show, id: @indent_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @indent_detail
    assert_response :success
  end

  test "should update indent_detail" do
    patch :update, id: @indent_detail, indent_detail: { indent_id: @indent_detail.indent_id, name: @indent_detail.name, num: @indent_detail.num, price: @indent_detail.price, product_id: @indent_detail.product_id }
    assert_redirected_to indent_detail_path(assigns(:indent_detail))
  end

  test "should destroy indent_detail" do
    assert_difference('IndentDetail.count', -1) do
      delete :destroy, id: @indent_detail
    end

    assert_redirected_to indent_details_path
  end
end
