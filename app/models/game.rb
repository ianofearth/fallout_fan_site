class Game < ActiveRecord::Base
  validates :title, :presence => true
  validates :description, :presence => true
  validates :number, :presence => true
end
