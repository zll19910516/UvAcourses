require 'test_helper'

class CoursesControllerTest < ActionController::TestCase
  setup do
    @course = courses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:courses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create course" do
    assert_difference('Course.count') do
      post :create, course: { acode: @course.acode, code: @course.code, description: @course.description, ects: @course.ects, examination: @course.examination, goals: @course.goals, institute: @course.institute, lecture_material: @course.lecture_material, name: @course.name, participant_count: @course.participant_count, period: @course.period, sgid: @course.sgid, specialities: @course.specialities, timetable: @course.timetable, year: @course.year }
    end

    assert_redirected_to course_path(assigns(:course))
  end

  test "should show course" do
    get :show, id: @course
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @course
    assert_response :success
  end

  test "should update course" do
    put :update, id: @course, course: { acode: @course.acode, code: @course.code, description: @course.description, ects: @course.ects, examination: @course.examination, goals: @course.goals, institute: @course.institute, lecture_material: @course.lecture_material, name: @course.name, participant_count: @course.participant_count, period: @course.period, sgid: @course.sgid, specialities: @course.specialities, timetable: @course.timetable, year: @course.year }
    assert_redirected_to course_path(assigns(:course))
  end

  test "should destroy course" do
    assert_difference('Course.count', -1) do
      delete :destroy, id: @course
    end

    assert_redirected_to courses_path
  end
end
