# app/controllers/scores_controller.rb
class Api::ScoresController < ApplicationController
  def index
    limit = params[:limit].to_i
    limit = limit.positive? ? limit : 100  # Use the provided limit if it's a positive integer, otherwise default to 100
    scores = Score.order(score: :desc).limit(limit)
    render json: scores
  end
  
  def create
    score = Score.new(score_params)

    if score.save
      render json: score, status: :created
    else
      render json: score.errors, status: :unprocessable_entity
    end
  end

  private

  def score_params
    params.require(:score).permit(:player_name, :score)
  end
end