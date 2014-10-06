class Generator::Monster

  def generate(team_level)
    points = 100
    monsters = []
    while points >= 20
      roll = lvl_roll points, team_level
      monsters << { quantity: roll[:quantity], monster: random_by_level(roll[:level])}
      points = points - roll[:points_spend]
    end
    monsters
  end

  def lvl_roll(points, team_level)
    roll =
    case
      when points >= 100
        Roll.d5
      when points >= 80
        Roll.d4
      when points >= 60
        Roll.d3
      when points >= 40
        Roll.d2
      else
        1
    end
    level = team_level - (5 - roll)
    points_left = points - roll * 20
    max_quantity = points_left/(roll * 20)
    max_quantity = 1 if max_quantity < 1
    quantity = Random.rand(1..max_quantity)
    { quantity: quantity, level: level, points_spend: roll * 20 * quantity}
  end

  def random_by_level(level)
    ::Monster.find(::Monster.where(challenge_rating: level).pluck(:id).shuffle[0])
  end

end