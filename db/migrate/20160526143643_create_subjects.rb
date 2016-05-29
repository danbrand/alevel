class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :title
      t.string :subject_image
      t.text :subject_description
      t.string :student_image
      t.text :student_description
      t.integer :price
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
