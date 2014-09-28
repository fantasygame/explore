class Generator::Money

  def generate(team_level)
    roll = Roll.d100

  end
  private
  def value_percent(team_level)
    case team_level
      when 1
        100
      when 2
        66
      when 3
        33
      when 4
        22
      when 5
        18
      when team_level.between? 6, 9
        21 - team_level
      else 11
    end
  end

end