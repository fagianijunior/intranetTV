require 'test_helper'

class UniformPieceGroupsControllerTest < ActionController::TestCase
  setup do
    @uniform_piece_group = uniform_piece_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:uniform_piece_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create uniform_piece_group" do
    assert_difference('UniformPieceGroup.count') do
      post :create, uniform_piece_group: { name: @uniform_piece_group.name }
    end

    assert_redirected_to uniform_piece_group_path(assigns(:uniform_piece_group))
  end

  test "should show uniform_piece_group" do
    get :show, id: @uniform_piece_group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @uniform_piece_group
    assert_response :success
  end

  test "should update uniform_piece_group" do
    patch :update, id: @uniform_piece_group, uniform_piece_group: { name: @uniform_piece_group.name }
    assert_redirected_to uniform_piece_group_path(assigns(:uniform_piece_group))
  end

  test "should destroy uniform_piece_group" do
    assert_difference('UniformPieceGroup.count', -1) do
      delete :destroy, id: @uniform_piece_group
    end

    assert_redirected_to uniform_piece_groups_path
  end
end
