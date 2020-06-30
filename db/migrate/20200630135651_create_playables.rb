class CreatePlayables < ActiveRecord::Migration[5.2]
  def change
    create_table :playables do |t|
      t.belongs_to :artist
      t.belongs_to :instrument
      t.timestamps
    end
  end
end
