class UniformPieceKindsController < ApplicationController
  before_action :require_user
  before_action :set_uniform_piece_kind, only: [:show, :edit, :update, :destroy]

  # GET /uniform_piece_kinds
  # GET /uniform_piece_kinds.json
  def index
    @uniform_piece_kinds = UniformPieceKind.all
  end

  # GET /uniform_piece_kinds/1
  # GET /uniform_piece_kinds/1.json
  def show
  end

  # GET /uniform_piece_kinds/new
  def new
    @uniform_piece_kind = UniformPieceKind.new
  end

  # GET /uniform_piece_kinds/1/edit
  def edit
  end

  # POST /uniform_piece_kinds
  # POST /uniform_piece_kinds.json
  def create
    @uniform_piece_kind = UniformPieceKind.new(uniform_piece_kind_params)

    respond_to do |format|
      if @uniform_piece_kind.save
        format.html { redirect_to @uniform_piece_kind, notice: 'Uniform piece kind was successfully created.' }
        format.json { render :show, status: :created, location: @uniform_piece_kind }
      else
        format.html { render :new }
        format.json { render json: @uniform_piece_kind.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /uniform_piece_kinds/1
  # PATCH/PUT /uniform_piece_kinds/1.json
  def update
    respond_to do |format|
      if @uniform_piece_kind.update(uniform_piece_kind_params)
        format.html { redirect_to @uniform_piece_kind, notice: 'Uniform piece kind was successfully updated.' }
        format.json { render :show, status: :ok, location: @uniform_piece_kind }
      else
        format.html { render :edit }
        format.json { render json: @uniform_piece_kind.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /uniform_piece_kinds/1
  # DELETE /uniform_piece_kinds/1.json
  def destroy
    @uniform_piece_kind.destroy
    respond_to do |format|
      format.html { redirect_to uniform_piece_kinds_url, notice: 'Uniform piece kind was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_uniform_piece_kind
      @uniform_piece_kind = UniformPieceKind.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def uniform_piece_kind_params
      params.require(:uniform_piece_kind).permit(:name)
    end
end
