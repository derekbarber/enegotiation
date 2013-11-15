class CreateTopStandings < ActiveRecord::Migration
  def change
    create_table :top_standings do |t|
      t.string :title
      t.string :system
      t.integer :order

      t.timestamps
    end
  end
end
