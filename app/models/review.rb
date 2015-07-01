class Review < ActiveRecord::Base
  validates :name, :presence => true
  validates :opinion, :presence => true
  validates :rating, :presence => true
  belongs_to :game
end
