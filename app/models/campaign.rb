class Campaign < ActiveRecord::Base
  belongs_to :user
  has_many :characters
  has_many :events
  validates_presence_of :name
  validates_length_of :name, minimum: 3
end
