class AtriclesController < ApplicationController
  before_action :set_atricle, only: %i[ show update destroy ]

  # GET /atricles
  def index
    @atricles = Atricle.all

    render json: @atricles
  end

  # GET /atricles/1
  def show
    render json: @atricle
  end

  # POST /atricles
  def create
    @atricle = Atricle.new(atricle_params)

    if @atricle.save
      render json: @atricle, status: :created, location: @atricle
    else
      render json: @atricle.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /atricles/1
  def update
    if @atricle.update(atricle_params)
      render json: @atricle
    else
      render json: @atricle.errors, status: :unprocessable_entity
    end
  end

  # DELETE /atricles/1
  def destroy
    @atricle.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_atricle
      @atricle = Atricle.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def atricle_params
      params.expect(atricle: [ :title, :body, :name ])
    end
end
