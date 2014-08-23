class Campaign < ActiveRecord::Base
  has_many :characters
  has_many :users, through: :characters
  has_many :events
  validates_presence_of :name
  validates_length_of :name, minimum: 3
  # validates_presence_of :characters
  def team_level
    return 0 if characters.empty?

    sum = 0
    total_lvl = 0
    characters.each do |character|
      sum+=1
      total_lvl = total_lvl + character.level
    end
    team_level = total_lvl.to_f/sum
    team_level.round

    # characters.inject(0) { |sum, el| sum + el.level } / characters.size
  end
end
