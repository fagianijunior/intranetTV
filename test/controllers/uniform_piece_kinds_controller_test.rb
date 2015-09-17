require 'test_helper'

class UniformPieceKindsControllerTest < ActionController::TestCase
  setup do
    @uniform_piece_kind = uniform_piece_kinds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:uniform_piece_kinds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create uniform_piece_kind" do
    assert_difference('UniformPieceKind.count') do
      post :create, uniform_piece_kind: { name: @uniform_piece_kind.name }
    end

    assert_redirected_to uniform_piece_kind_path(assigns(:uniform_piece_kind))
  end

  test "should show uniform_piece_kind" do
    get :show, id: @uniform_piece_kind
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @uniform_piece_kind
    assert_response :success
  end

  test "should update uniform_piece_kind" do
    patch :update, id: @uniform_piece_kind, uniform_piece_kind: { name: @uniform_piece_kind.name }
    assert_redirected_to uniform_piece_kind_path(assigns(:uniform_piece_kind))
  end

  test "should destroy uniform_piece_kind" do
    assert_difference('UniformPieceKind.count', -1) do
      delete :destroy, id: @uniform_piece_kind
    end

    assert_redirected_to uniform_piece_kinds_path
  end
end
