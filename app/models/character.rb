class Character < ActiveRecord::Base
  belongs_to :user
  belongs_to :campaign
  validates_presence_of :exp
  validates_numericality_of :exp, greater_than_or_equal_to: 0
  def level
    if self.exp < 0
      def raise_exception
      puts 'Exp cannot be lower than 0 you stupid motherfucker!'
      throw 'An error has occured.'
      puts 'I am raising you bitch.'
      end
      raise_exception
    else current_exp = self.exp / 1000
      lvl = 1

      while current_exp >= lvl do
        current_exp = current_exp - lvl
        lvl += 1
      end

      lvl
      end
    end




end
