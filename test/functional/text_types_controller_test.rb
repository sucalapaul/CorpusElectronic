require 'test_helper'

class TextTypesControllerTest < ActionController::TestCase
  setup do
    @text_type = text_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:text_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create text_type" do
    assert_difference('TextType.count') do
      post :create, text_type: { name: @text_type.name }
    end

    assert_redirected_to text_type_path(assigns(:text_type))
  end

  test "should show text_type" do
    get :show, id: @text_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @text_type
    assert_response :success
  end

  test "should update text_type" do
    put :update, id: @text_type, text_type: { name: @text_type.name }
    assert_redirected_to text_type_path(assigns(:text_type))
  end

  test "should destroy text_type" do
    assert_difference('TextType.count', -1) do
      delete :destroy, id: @text_type
    end

    assert_redirected_to text_types_path
  end
end
