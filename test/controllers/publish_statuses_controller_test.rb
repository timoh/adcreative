require 'test_helper'

class PublishStatusesControllerTest < ActionController::TestCase
  setup do
    @publish_status = publish_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:publish_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create publish_status" do
    assert_difference('PublishStatus.count') do
      post :create, publish_status: { ordering: @publish_status.ordering, status_name: @publish_status.status_name }
    end

    assert_redirected_to publish_status_path(assigns(:publish_status))
  end

  test "should show publish_status" do
    get :show, id: @publish_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @publish_status
    assert_response :success
  end

  test "should update publish_status" do
    patch :update, id: @publish_status, publish_status: { ordering: @publish_status.ordering, status_name: @publish_status.status_name }
    assert_redirected_to publish_status_path(assigns(:publish_status))
  end

  test "should destroy publish_status" do
    assert_difference('PublishStatus.count', -1) do
      delete :destroy, id: @publish_status
    end

    assert_redirected_to publish_statuses_path
  end
end
