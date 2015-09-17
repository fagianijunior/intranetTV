class UniformPiecesController < ApplicationController
  before_action :set_uniform_piece, only: [:show, :edit, :update, :destroy]

  # GET /uniform_pieces
  # GET /uniform_pieces.json
  def index
    @uniform_pieces = UniformPiece.all
  end

  # GET /uniform_pieces/1
  # GET /uniform_pieces/1.json
  def show
  end

  # GET /uniform_pieces/new
  def new
    @uniform_piece = UniformPiece.new
  end

  # GET /uniform_pieces/1/edit
  def edit
  end

  # POST /uniform_pieces
  # POST /uniform_pieces.json
  def create
    saved = false
    @uniform_piece = UniformPiece.new(uniform_piece_params)
    
    1.upto(@uniform_piece.amount.to_i) do
      if @uniform_piece.save
        @uniform_piece = UniformPiece.new(uniform_piece_params)
        saved = true
      end
    end

    if saved == true
      redirect_to uniform_pieces_path, notice: 'Peças de uniforme criadas com sucesso.'
    else
      render :edit
    end
  end

  # PATCH/PUT /uniform_pieces/1
  # PATCH/PUT /uniform_pieces/1.json
  def update
    respond_to do |format|
      if @uniform_piece.update(uniform_piece_params)
        format.html { redirect_to @uniform_piece, notice: 'Uniform piece was successfully updated.' }
        format.json { render :show, status: :ok, location: @uniform_piece }
      else
        format.html { render :edit }
        format.json { render json: @uniform_piece.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /uniform_pieces/1
  # DELETE /uniform_pieces/1.json
  def destroy
    @uniform_piece.destroy
    respond_to do |format|
      format.html { redirect_to uniform_pieces_url, notice: 'Uniform piece was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_uniform_piece
      @uniform_piece = UniformPiece.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def uniform_piece_params
      params.require(:uniform_piece).permit(:amount, :entry, :delivered, :delivery_reason, :returned, :return_reason, :clothing_size, :shoes_size, :color, :uniform_piece_kind_id, :uniform_piece_group_id, :used, :employer_id)
    end
end
