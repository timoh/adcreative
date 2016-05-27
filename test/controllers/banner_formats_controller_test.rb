require 'test_helper'

class BannerFormatsControllerTest < ActionController::TestCase
  setup do
    @banner_format = banner_formats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:banner_formats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create banner_format" do
    assert_difference('BannerFormat.count') do
      post :create, banner_format: { height: @banner_format.height, title: @banner_format.title, width: @banner_format.width }
    end

    assert_redirected_to banner_format_path(assigns(:banner_format))
  end

  test "should show banner_format" do
    get :show, id: @banner_format
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @banner_format
    assert_response :success
  end

  test "should update banner_format" do
    patch :update, id: @banner_format, banner_format: { height: @banner_format.height, title: @banner_format.title, width: @banner_format.width }
    assert_redirected_to banner_format_path(assigns(:banner_format))
  end

  test "should destroy banner_format" do
    assert_difference('BannerFormat.count', -1) do
      delete :destroy, id: @banner_format
    end

    assert_redirected_to banner_formats_path
  end
end
