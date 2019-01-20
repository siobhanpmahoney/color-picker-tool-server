class Api::V1::ColorsController < ApplicationController

  def index
    @colors = Color.all
    render json: @colors
  end

  def create
    @color = Color.new(color_params)
    if @color.save
      render json: @color, status: 201
    else
      render json: {error: @color.errors.full_messages}, status: 500
    end
  end


  def show
    @color = Color.find(params[:id])
    render json: @color, status: :ok
  end


  def update
    @color = Color.find(params[:id])
    @color.update(color_params)
    if @color.save
      render json: @color
    else
      render json: {error: @color.errors.full_messages}
    end
  end

  def destroy
    @color = Color.find(params[:id])
    @color.destroy
    render json: {message:"Color Deleted"}
  end



  private

  def color_params
    params.require(:color).permit(:hex, :group, :starred, :website_placement, :status, :notes, :as_gradient, :gradient_css)
  end


end
