class UniformPieceGroupsController < ApplicationController
  before_action :set_uniform_piece_group, only: [:show, :edit, :update, :destroy]

  # GET /uniform_piece_groups
  # GET /uniform_piece_groups.json
  def index
    @uniform_piece_groups = UniformPieceGroup.all
  end

  # GET /uniform_piece_groups/1
  # GET /uniform_piece_groups/1.json
  def show
  end

  # GET /uniform_piece_groups/new
  def new
    @uniform_piece_group = UniformPieceGroup.new
  end

  # GET /uniform_piece_groups/1/edit
  def edit
  end

  # POST /uniform_piece_groups
  # POST /uniform_piece_groups.json
  def create
    @uniform_piece_group = UniformPieceGroup.new(uniform_piece_group_params)

    respond_to do |format|
      if @uniform_piece_group.save
        format.html { redirect_to @uniform_piece_group, notice: 'Uniform piece group was successfully created.' }
        format.json { render :show, status: :created, location: @uniform_piece_group }
      else
        format.html { render :new }
        format.json { render json: @uniform_piece_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /uniform_piece_groups/1
  # PATCH/PUT /uniform_piece_groups/1.json
  def update
    respond_to do |format|
      if @uniform_piece_group.update(uniform_piece_group_params)
        format.html { redirect_to @uniform_piece_group, notice: 'Uniform piece group was successfully updated.' }
        format.json { render :show, status: :ok, location: @uniform_piece_group }
      else
        format.html { render :edit }
        format.json { render json: @uniform_piece_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /uniform_piece_groups/1
  # DELETE /uniform_piece_groups/1.json
  def destroy
    @uniform_piece_group.destroy
    respond_to do |format|
      format.html { redirect_to uniform_piece_groups_url, notice: 'Uniform piece group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_uniform_piece_group
      @uniform_piece_group = UniformPieceGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def uniform_piece_group_params
      params.require(:uniform_piece_group).permit(:name)
    end
end
