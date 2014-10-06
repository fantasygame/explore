class Generator::Event

  def generate(team_level)
    monsters = Generator::Monster.new.generate team_level
    { monsters: monsters }
  end

end