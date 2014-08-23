class Campaign < ActiveRecord::Base
  has_many :characters
  has_many :users, through: :characters
  has_many :events
  validates_presence_of :name
  validates_length_of :name, minimum: 3

  def team_level
    return 0 if characters.empty?
    total_lvl = 0
    characters.each do |character|
      total_lvl += character.level
    end
    (total_lvl.to_f / characters.size).round
  end
end
