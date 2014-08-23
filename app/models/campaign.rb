class Campaign < ActiveRecord::Base
  belongs_to :user
  has_many :characters
  has_many :events
end
