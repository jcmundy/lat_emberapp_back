class Admin::GelatosController < ApplicationController
  before_action :set_gelato, only: [:show, :update, :destroy]

  # GET /gelatos
  def index
    @gelatos = Gelato.all

    render json: @gelatos
  end

  # GET /gelatos/1
  def show
    render json: @gelato
  end

  # POST /gelatos
  def create
    @gelato = Gelato.new(gelato_params)

    if @gelato.save
      render json: @gelato, status: :created, location: @gelato
    else
      render json: @gelato.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /gelatos/1
  def update
    if @gelato.update(gelato_params)
      render json: @gelato
    else
      render json: @gelato.errors, status: :unprocessable_entity
    end
  end

  # DELETE /gelatos/1
  def destroy
    @gelato.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gelato
      @gelato = Gelato.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def gelato_params
        ActiveModelSerializers::Deserialization
          .jsonapi_parse(
              params, only: [
                  :name, :id, :flavor_id
                  ]
                  )
    end
end
