class HymnsController < ApplicationController
  before_action :set_hymn, only: [:show, :update, :destroy]

  # GET /hymns
  def index
    @hymns = Hymn.all

    render json: @hymns
  end

  # GET /hymns/1
  def show
    render json: @hymn
  end

  # POST /hymns
  def create
    @hymn = Hymn.new(hymn_params)

    if @hymn.save
      render json: @hymn, status: :created, location: @hymn
    else
      render json: @hymn.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /hymns/1
  def update
    if @hymn.update(hymn_params)
      render json: @hymn
    else
      render json: @hymn.errors, status: :unprocessable_entity
    end
  end

  # DELETE /hymns/1
  def destroy
    @hymn.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hymn
      @hymn = Hymn.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def hymn_params
      params.require(:hymn).permit(:title, :description, :story, :editorRating, :editorReview, :doctrine, :scriptural)
    end
end
