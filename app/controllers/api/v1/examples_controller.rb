class Api::V1::ExamplesController < ApplicationController

  def index
    @algorithm = Algorithm.find(params[:algorithm_id])
    render json: @algorithm.examples
  end

  def create
    @algorithm = Algorithm.find(params[:algorithm_id])
    @example = @algorithm.examples.new(example_params)
    @example.save
    render json: "#{@example.title} has been created"

  end

  def show
    @algorithm = Algorithm.find(params[:algorithm_id])
    render json: @algorithm.examples
  end

  private

  def example_params
    params.require(:example).permit(:title, :content) 
  end


end
