require 'test_helper'

class ResourcesTablesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:resources_tables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create resources_table" do
    assert_difference('ResourcesTable.count') do
      post :create, :resources_table => { }
    end

    assert_redirected_to resources_table_path(assigns(:resources_table))
  end

  test "should show resources_table" do
    get :show, :id => resources_tables(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => resources_tables(:one).to_param
    assert_response :success
  end

  test "should update resources_table" do
    put :update, :id => resources_tables(:one).to_param, :resources_table => { }
    assert_redirected_to resources_table_path(assigns(:resources_table))
  end

  test "should destroy resources_table" do
    assert_difference('ResourcesTable.count', -1) do
      delete :destroy, :id => resources_tables(:one).to_param
    end

    assert_redirected_to resources_tables_path
  end
end
