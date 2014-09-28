class Generator::Monster

  def generate(team_level)
    roll = Random.rand(100)
    monsters = []
    # TODO
  end

  def random_by_level(level)
    Monster.find(Monster.where(challenge_rating: level).pluck(:id).shuffle[0])
  end

end