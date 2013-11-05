require 'test_helper'

class StarShipsControllerTest < ActionController::TestCase
  setup do
    @star_ship = star_ships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:star_ships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create star_ship" do
    assert_difference('StarShip.count') do
      post :create, star_ship: { name: @star_ship.name, shield_strength: @star_ship.shield_strength }
    end

    assert_redirected_to star_ship_path(assigns(:star_ship))
  end

  test "should show star_ship" do
    get :show, id: @star_ship
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @star_ship
    assert_response :success
  end

  test "should update star_ship" do
    put :update, id: @star_ship, star_ship: { name: @star_ship.name, shield_strength: @star_ship.shield_strength }
    assert_redirected_to star_ship_path(assigns(:star_ship))
  end

  test "should destroy star_ship" do
    assert_difference('StarShip.count', -1) do
      delete :destroy, id: @star_ship
    end

    assert_redirected_to star_ships_path
  end
end
