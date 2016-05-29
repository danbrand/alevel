class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :title
      t.string :duration
      t.string :embed_code
      t.text :description
      t.references :topic, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
