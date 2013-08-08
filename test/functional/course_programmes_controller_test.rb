require 'test_helper'

class CourseProgrammesControllerTest < ActionController::TestCase
  setup do
    @course_programme = course_programmes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:course_programmes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create course_programme" do
    assert_difference('CourseProgramme.count') do
      post :create, course_programme: { course_sgid: @course_programme.course_sgid, programme_id: @course_programme.programme_id }
    end

    assert_redirected_to course_programme_path(assigns(:course_programme))
  end

  test "should show course_programme" do
    get :show, id: @course_programme
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @course_programme
    assert_response :success
  end

  test "should update course_programme" do
    put :update, id: @course_programme, course_programme: { course_sgid: @course_programme.course_sgid, programme_id: @course_programme.programme_id }
    assert_redirected_to course_programme_path(assigns(:course_programme))
  end

  test "should destroy course_programme" do
    assert_difference('CourseProgramme.count', -1) do
      delete :destroy, id: @course_programme
    end

    assert_redirected_to course_programmes_path
  end
end
