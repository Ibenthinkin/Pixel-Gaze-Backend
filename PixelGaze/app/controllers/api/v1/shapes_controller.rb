class Api::V1::ShapesController < ApplicationController
    before_action :find_shape, only: [:update]
  def index
    @shapes = Shapes.all
    render json: @shapes
  end

  def update
    @shape.update(shape_params)
    if @shape.save
      render json: @shape, status: :accepted
    else
      render json: { errors: @shape.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def shape_params
    params.permit(:title, :imageURL, :imageBIN)
  end

  def find_shape
    @shape = Shapes.find(params[:id])
  end

end
