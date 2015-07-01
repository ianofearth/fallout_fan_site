class Game < ActiveRecord::Base
  has_many :reviews
  validates :title, :presence => true
  validates :description, :presence => true
  validates :number, :presence => true
end
