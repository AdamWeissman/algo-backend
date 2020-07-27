class Api::V1::ExamplesController < ApplicationController

  def index
    @algorithm = Algorithm.find(params[:algorithm_id])
    render json: @algorithm.examples
  end

  def create
    @algorithm = Algorithm.find(params[:algorithm_id])
    @example = @algorithm.examples.new(example_params) #as before
    @example.save
    render json: @example.id
  end

  def update
    @algorithm = Algorithm.find(params[:algorithm_id])
    @example = @algorithm.examples.find(params[:example_id])
    @example.save
    render json: "#{@example.title} has been updated with #{@example.content}"
  end


  def show
    @algorithm = Algorithm.find(params[:algorithm_id])
    @example = Example.find(params[:id])
    render json: @example
  end

  private

  def example_params
    params.require(:example).permit(:title, :content) 
  end


end
