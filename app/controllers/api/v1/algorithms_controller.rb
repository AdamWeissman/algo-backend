class Api::V1::AlgorithmsController < ApplicationController

  def index
    @algorithms = Algorithm.all
    render json: @algorithms
  end

  def show
    @algorithm = Algorithm.find_by_id(params[:id])
    render json: @algorithm
  end
end
