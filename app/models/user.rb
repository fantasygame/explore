class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :campaigns, through: :characters
  has_many :characters

  def total_exp
    exp = 0
    characters.each { |c| exp += c.exp }
    exp
  end

  def total_level
    LevelCalculator.new.level total_exp
  end
end
