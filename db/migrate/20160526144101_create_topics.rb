class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :number
      t.string :title
      t.integer :video_count
      t.references :subject, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
