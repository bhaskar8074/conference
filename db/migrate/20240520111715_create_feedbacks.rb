class CreateFeedbacks < ActiveRecord::Migration[7.1]
  def change
    create_table :feedbacks do |t|
      t.references :user, null: false, foreign_key: true
      t.references :conference, null: false, foreign_key: true
      t.text :comment

      t.timestamps
    end
  end
end
