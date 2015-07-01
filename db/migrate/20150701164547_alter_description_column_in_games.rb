class AlterDescriptionColumnInGames < ActiveRecord::Migration
  def change
    remove_column :games, :desription, :string
    add_column :games, :description, :string
  end
end
