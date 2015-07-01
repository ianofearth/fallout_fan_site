class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.column :name, :string
      t.column :rating, :integer
      t.column :opinion, :string
      t.timestamps
    end
  end
end
