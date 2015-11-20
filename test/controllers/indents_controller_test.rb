require 'test_helper'

class IndentsControllerTest < ActionController::TestCase
  setup do
    @indent = indents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:indents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create indent" do
    assert_difference('Indent.count') do
      post :create, indent: { bltime: @indent.bltime, customer_id: @indent.customer_id, diliveryman_id: @indent.diliveryman_id, finishtime: @indent.finishtime, number: @indent.number, orderstatus: @indent.orderstatus, status: @indent.status, sum: @indent.sum }
    end

    assert_redirected_to indent_path(assigns(:indent))
  end

  test "should show indent" do
    get :show, id: @indent
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @indent
    assert_response :success
  end

  test "should update indent" do
    patch :update, id: @indent, indent: { bltime: @indent.bltime, customer_id: @indent.customer_id, diliveryman_id: @indent.diliveryman_id, finishtime: @indent.finishtime, number: @indent.number, orderstatus: @indent.orderstatus, status: @indent.status, sum: @indent.sum }
    assert_redirected_to indent_path(assigns(:indent))
  end

  test "should destroy indent" do
    assert_difference('Indent.count', -1) do
      delete :destroy, id: @indent
    end

    assert_redirected_to indents_path
  end
end
