class Campaign < ActiveRecord::Base
  has_many :characters
  has_many :users, through: :characters
  has_many :events
  validates_presence_of :name
  validates_length_of :name, minimum: 3
  validates_presence_of :characters
end
