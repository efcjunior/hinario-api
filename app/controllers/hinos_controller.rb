class HinosController < ApplicationController
  before_action :set_hino, only: [:show, :update, :destroy]

  # GET /hinos
  def index
    @hinos = Hino.all

    render json: @hinos
  end

  # GET /hinos/1
  def show
    render json: @hino
  end

  # POST /hinos
  def create
    @hino = Hino.new(hino_params)

    if @hino.save
      render json: @hino, status: :created, location: @hino
    else
      render json: @hino.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /hinos/1
  def update
    if @hino.update(hino_params)
      render json: @hino
    else
      render json: @hino.errors, status: :unprocessable_entity
    end
  end

  # DELETE /hinos/1
  def destroy
    @hino.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hino
      @hino = Hino.where(numero: (params[:numero]))
    end

    # Only allow a trusted parameter "white list" through.
    def hino_params
      params.require(:hino).permit(:numero, :titulo, :compositor, :paragrafos)
    end
end
