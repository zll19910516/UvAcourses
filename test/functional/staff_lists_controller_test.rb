require 'test_helper'

class StaffListsControllerTest < ActionController::TestCase
  setup do
    @staff_list = staff_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:staff_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create staff_list" do
    assert_difference('StaffList.count') do
      post :create, staff_list: { id: @staff_list.id, name: @staff_list.name, url: @staff_list.url }
    end

    assert_redirected_to staff_list_path(assigns(:staff_list))
  end

  test "should show staff_list" do
    get :show, id: @staff_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @staff_list
    assert_response :success
  end

  test "should update staff_list" do
    put :update, id: @staff_list, staff_list: { id: @staff_list.id, name: @staff_list.name, url: @staff_list.url }
    assert_redirected_to staff_list_path(assigns(:staff_list))
  end

  test "should destroy staff_list" do
    assert_difference('StaffList.count', -1) do
      delete :destroy, id: @staff_list
    end

    assert_redirected_to staff_lists_path
  end
end
