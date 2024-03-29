class ScoreSerializer < ActiveModel::Serializer
  attributes :id, :playerName, :score

  def playerName
    object.player_name
  end
end
