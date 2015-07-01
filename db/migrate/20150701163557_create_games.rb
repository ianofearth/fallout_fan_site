class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.column :title, :string
      t.column :desription, :string
      t.column :number, :integer
      t.timestamps
    end
  end
end
