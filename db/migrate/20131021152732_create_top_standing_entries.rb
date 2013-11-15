class CreateTopStandingEntries < ActiveRecord::Migration
  def change
    create_table :top_standing_entries do |t|
      t.integer :top_standing_id
      t.integer :rank
      t.string :player
      t.string :coach
      t.string :country
      t.text :comments

      t.timestamps
    end
  end
end
