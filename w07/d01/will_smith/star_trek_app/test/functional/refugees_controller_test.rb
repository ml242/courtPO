require 'test_helper'

class RefugeesControllerTest < ActionController::TestCase
  setup do
    @refugee = refugees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:refugees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create refugee" do
    assert_difference('Refugee.count') do
      post :create, refugee: { name: @refugee.name }
    end

    assert_redirected_to refugee_path(assigns(:refugee))
  end

  test "should show refugee" do
    get :show, id: @refugee
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @refugee
    assert_response :success
  end

  test "should update refugee" do
    put :update, id: @refugee, refugee: { name: @refugee.name }
    assert_redirected_to refugee_path(assigns(:refugee))
  end

  test "should destroy refugee" do
    assert_difference('Refugee.count', -1) do
      delete :destroy, id: @refugee
    end

    assert_redirected_to refugees_path
  end
end
