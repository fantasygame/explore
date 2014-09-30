class Generator::Money

  def generate(team_level)
    roll = Roll.d100
    percent = value_percent team_level
    money = Wealth.find_by(level: team_level).money
    average_value = money * percent / 100.0
    (average_value * (roll * 2 / 100.0)).round
  end

  private
  def value_percent(team_level)
    case team_level
      when 1
        80
      when 2
        66
      when 3
        33
      when 4
        22
      when 5
        18
      when 6..9
        21 - team_level
      else
        11
    end
  end

end