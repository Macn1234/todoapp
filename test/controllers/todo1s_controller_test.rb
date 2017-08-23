require 'test_helper'

class Todo1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @todo1 = todo1s(:one)
  end

  test "should get index" do
    get todo1s_url
    assert_response :success
  end

  test "should get new" do
    get new_todo1_url
    assert_response :success
  end

  test "should create todo1" do
    assert_difference('Todo1.count') do
      post todo1s_url, params: { todo1: { title: @todo1.title } }
    end

    assert_redirected_to todo1_url(Todo1.last)
  end

  test "should show todo1" do
    get todo1_url(@todo1)
    assert_response :success
  end

  test "should get edit" do
    get edit_todo1_url(@todo1)
    assert_response :success
  end

  test "should update todo1" do
    patch todo1_url(@todo1), params: { todo1: { title: @todo1.title } }
    assert_redirected_to todo1_url(@todo1)
  end

  test "should destroy todo1" do
    assert_difference('Todo1.count', -1) do
      delete todo1_url(@todo1)
    end

    assert_redirected_to todo1s_url
  end
end
