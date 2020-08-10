class Api::V1::ExamplesController < ApplicationController

  def index
    @algorithm = Algorithm.find(params[:algorithm_id])
    @allExamples = @algorithm.examples
    rightNow = DateTime.now.to_f
    @zenExamples = @allExamples.map { |example| ((rightNow - example.created_at.to_f) < 172800.0 ) ? example : example.delete } 
    render json: @zenExamples.compact #@algorithm.examples
  end

  # note 172800.0 is 60 * 60 * 24 * 2 ... or 2 days.  Basically, the above check is to make sure that the example was created within 2 days

  def create
    @algorithm = Algorithm.find(params[:algorithm_id])
    @example = @algorithm.examples.new(example_params) #as before
    @example.save
    render json: @example.id
  end

  # def update
  #   @algorithm = Algorithm.find(params[:algorithm_id])
  #   @example = @algorithm.examples.find(params[:id])
  #   @example.content = params["content"]
  #   @example.save
  #   render json: "#{@example.title} has been updated with #{@example.content}"
  # end


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
