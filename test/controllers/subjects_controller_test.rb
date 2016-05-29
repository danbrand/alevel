require 'test_helper'

class SubjectsControllerTest < ActionController::TestCase
  setup do
    @subject = subjects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:subjects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create subject" do
    assert_difference('Subject.count') do
      post :create, subject: { price: @subject.price, student_description: @subject.student_description, student_image: @subject.student_image, subject_description: @subject.subject_description, subject_image: @subject.subject_image, title: @subject.title, user_id: @subject.user_id }
    end

    assert_redirected_to subject_path(assigns(:subject))
  end

  test "should show subject" do
    get :show, id: @subject
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @subject
    assert_response :success
  end

  test "should update subject" do
    patch :update, id: @subject, subject: { price: @subject.price, student_description: @subject.student_description, student_image: @subject.student_image, subject_description: @subject.subject_description, subject_image: @subject.subject_image, title: @subject.title, user_id: @subject.user_id }
    assert_redirected_to subject_path(assigns(:subject))
  end

  test "should destroy subject" do
    assert_difference('Subject.count', -1) do
      delete :destroy, id: @subject
    end

    assert_redirected_to subjects_path
  end
end
