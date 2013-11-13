require 'test_helper'

class CrewMembersControllerTest < ActionController::TestCase
  setup do
    @crew_member = crew_members(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:crew_members)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create crew_member" do
    assert_difference('CrewMember.count') do
      post :create, crew_member: { name: @crew_member.name, on_ship: @crew_member.on_ship, ship_id: @crew_member.ship_id, shirt_color: @crew_member.shirt_color }
    end

    assert_redirected_to crew_member_path(assigns(:crew_member))
  end

  test "should show crew_member" do
    get :show, id: @crew_member
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @crew_member
    assert_response :success
  end

  test "should update crew_member" do
    put :update, id: @crew_member, crew_member: { name: @crew_member.name, on_ship: @crew_member.on_ship, ship_id: @crew_member.ship_id, shirt_color: @crew_member.shirt_color }
    assert_redirected_to crew_member_path(assigns(:crew_member))
  end

  test "should destroy crew_member" do
    assert_difference('CrewMember.count', -1) do
      delete :destroy, id: @crew_member
    end

    assert_redirected_to crew_members_path
  end
end
