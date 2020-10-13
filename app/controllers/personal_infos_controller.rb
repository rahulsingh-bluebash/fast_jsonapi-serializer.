class PersonalInfosController < ApplicationController
  before_action :set_personal_info, only: [:show, :update, :destroy]

  # GET /personal_infos
  def index
    @personal_infos = PersonalInfo.all

    render json: @personal_infos
  end

  # GET /personal_infos/1
  def show
    render json: @personal_info
  end

  # POST /personal_infos
  def create
    @personal_info = PersonalInfo.new(personal_info_params)

    if @personal_info.save
      render json: @personal_info, status: :created, location: @personal_info
    else
      render json: @personal_info.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /personal_infos/1
  def update
    if @personal_info.update(personal_info_params)
      render json: @personal_info
    else
      render json: @personal_info.errors, status: :unprocessable_entity
    end
  end

  # DELETE /personal_infos/1
  def destroy
    @personal_info.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_personal_info
      @personal_info = PersonalInfo.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def personal_info_params
      params.require(:personal_info).permit(:gender, :phone_no, :address, :user_id)
    end
end
