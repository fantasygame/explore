class EventGenerator

  def event_monsters team_level
    roll = Random.rand(100)
    monsters = []
    case roll
      when roll.between?(1, 5)
        if team_level - 3 > 0
          return 4, random_monster(team_level - 3)
        elsif team_level - 2 > 0
          return 3, random_monster(team_level - 2)
        elsif team_level - 1 > 0
          return 2, random_monster(team_level - 1)
        else
          return 1, random_monster(team_level)
        end
      when roll.between?(6, 10)
        if team_level - 4 > 0
          return 3, random_monster(team_level - 4)
        elsif team_level - 3 > 0
          return 4, random_monster(team_level - 3)
        elsif team_level - 2 > 0
          return 3, random_monster(team_level - 2)
        elsif team_level - 1 > 0
          return 2, random_monster(team_level - 1)
        else
          return 1, random_monster(team_level)
        end
    end

  end

  def random_monster level
    Monster.find(Monster.where(challenge_rating: level).pluck(:id).shuffle[0])
  end

end