require 'test_helper'

class HisViewsControllerTest < ActionController::TestCase
  setup do
    @his_view = his_views(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:his_views)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create his_view" do
    assert_difference('HisView.count') do
      post :create, his_view: {  }
    end

    assert_redirected_to his_view_path(assigns(:his_view))
  end

  test "should show his_view" do
    get :show, id: @his_view
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @his_view
    assert_response :success
  end

  test "should update his_view" do
    put :update, id: @his_view, his_view: {  }
    assert_redirected_to his_view_path(assigns(:his_view))
  end

  test "should destroy his_view" do
    assert_difference('HisView.count', -1) do
      delete :destroy, id: @his_view
    end

    assert_redirected_to his_views_path
  end
end
