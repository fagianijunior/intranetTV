require 'test_helper'

class UniformPiecesControllerTest < ActionController::TestCase
  setup do
    @uniform_piece = uniform_pieces(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:uniform_pieces)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create uniform_piece" do
    assert_difference('UniformPiece.count') do
      post :create, uniform_piece: { clothing_size: @uniform_piece.clothing_size, color: @uniform_piece.color, delivered: @uniform_piece.delivered, delivery_reason: @uniform_piece.delivery_reason, employer_id: @uniform_piece.employer_id, entry: @uniform_piece.entry, return_reason: @uniform_piece.return_reason, returned: @uniform_piece.returned, shoes_size: @uniform_piece.shoes_size, uniform_piece_group_id: @uniform_piece.uniform_piece_group_id, uniform_piece_kind_id: @uniform_piece.uniform_piece_kind_id }
    end

    assert_redirected_to uniform_piece_path(assigns(:uniform_piece))
  end

  test "should show uniform_piece" do
    get :show, id: @uniform_piece
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @uniform_piece
    assert_response :success
  end

  test "should update uniform_piece" do
    patch :update, id: @uniform_piece, uniform_piece: { clothing_size: @uniform_piece.clothing_size, color: @uniform_piece.color, delivered: @uniform_piece.delivered, delivery_reason: @uniform_piece.delivery_reason, employer_id: @uniform_piece.employer_id, entry: @uniform_piece.entry, return_reason: @uniform_piece.return_reason, returned: @uniform_piece.returned, shoes_size: @uniform_piece.shoes_size, uniform_piece_group_id: @uniform_piece.uniform_piece_group_id, uniform_piece_kind_id: @uniform_piece.uniform_piece_kind_id }
    assert_redirected_to uniform_piece_path(assigns(:uniform_piece))
  end

  test "should destroy uniform_piece" do
    assert_difference('UniformPiece.count', -1) do
      delete :destroy, id: @uniform_piece
    end

    assert_redirected_to uniform_pieces_path
  end
end
