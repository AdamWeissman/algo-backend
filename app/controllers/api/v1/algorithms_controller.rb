class Api::V1::AlgorithmsController < ApplicationController

  def idxe
    @algorithms = Algorithm.all
    @algos = []
    @algorithms.each do |algo|
      if algo.examples.length >= 1
        @algos << algo
      else
        next
      end
    end
      
    render json: @algos
  end

  def index
    @algorithms = Algorithm.all
    render json: @algorithms
  end

  # def show
  #   @algorithm = Algorithm.find_by_id(params[:id])
  #   render json: @algorithm.examples
  # end
end
