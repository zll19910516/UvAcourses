require 'test_helper'

class CourseStaffsControllerTest < ActionController::TestCase
  setup do
    @course_staff = course_staffs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:course_staffs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create course_staff" do
    assert_difference('CourseStaff.count') do
      post :create, course_staff: { course_sgid: @course_staff.course_sgid, staff_id: @course_staff.staff_id }
    end

    assert_redirected_to course_staff_path(assigns(:course_staff))
  end

  test "should show course_staff" do
    get :show, id: @course_staff
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @course_staff
    assert_response :success
  end

  test "should update course_staff" do
    put :update, id: @course_staff, course_staff: { course_sgid: @course_staff.course_sgid, staff_id: @course_staff.staff_id }
    assert_redirected_to course_staff_path(assigns(:course_staff))
  end

  test "should destroy course_staff" do
    assert_difference('CourseStaff.count', -1) do
      delete :destroy, id: @course_staff
    end

    assert_redirected_to course_staffs_path
  end
end
