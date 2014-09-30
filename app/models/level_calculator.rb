class LevelCalculator

  def level(exp)
    raise 'Exp cannot be less than 0.' if exp < 0
    current_exp = exp / 1000
    lvl = 1
    while current_exp >= lvl do
      current_exp = current_exp - lvl
      lvl += 1
    end
    lvl
  end

end