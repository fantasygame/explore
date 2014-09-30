class Character < ActiveRecord::Base
  belongs_to :user
  belongs_to :campaign
  validates_presence_of :exp
  validates_numericality_of :exp, greater_than_or_equal_to: 0

  def level
    LevelCalculator.new.level exp
  end
end
