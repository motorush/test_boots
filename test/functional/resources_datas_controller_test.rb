require 'test_helper'

class ResourcesDatasControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:resources_datas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create resources_data" do
    assert_difference('ResourcesData.count') do
      post :create, :resources_data => { }
    end

    assert_redirected_to resources_data_path(assigns(:resources_data))
  end

  test "should show resources_data" do
    get :show, :id => resources_datas(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => resources_datas(:one).to_param
    assert_response :success
  end

  test "should update resources_data" do
    put :update, :id => resources_datas(:one).to_param, :resources_data => { }
    assert_redirected_to resources_data_path(assigns(:resources_data))
  end

  test "should destroy resources_data" do
    assert_difference('ResourcesData.count', -1) do
      delete :destroy, :id => resources_datas(:one).to_param
    end

    assert_redirected_to resources_datas_path
  end
end
