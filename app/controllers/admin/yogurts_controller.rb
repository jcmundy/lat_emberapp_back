class Admin::YogurtsController < ApplicationController
  before_action :set_yogurt, only: [:show, :update, :destroy]

  # GET /yogurts
  def index
    @yogurts = Yogurt.all

    render json: @yogurts
  end

  # GET /yogurts/1
  def show
    render json: @yogurt
  end

  # POST /yogurts
  def create
    @yogurt = Yogurt.new(yogurt_params)

    if @yogurt.save
      render json: @yogurt, status: :created, location: @yogurt
    else
      render json: @yogurt.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /yogurts/1
  def update
    if @yogurt.update(yogurt_params)
      render json: @yogurt
    else
      render json: @yogurt.errors, status: :unprocessable_entity
    end
  end

  # DELETE /yogurts/1
  def destroy
    @yogurt.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_yogurt
      @yogurt = Yogurt.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def yogurt_params
        ActiveModelSerializers::Deserialization
          .jsonapi_parse(
              params, only: [
                  :name
                  ]
                  )
    end
end
