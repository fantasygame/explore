class Wealth < ActiveRecord::Base
  validates_presence_of :level, :money
end
