class AddGameidColumnToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :game_id, :integer
    add_column :reviews, :number, :integer
  end
end
