class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.string :name
      t.string :content
      t.string :image
      t.boolean :enabled

      t.timestamps
    end
  end
end
