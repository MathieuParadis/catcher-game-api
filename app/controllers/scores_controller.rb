class ScoresController < ApplicationController
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
