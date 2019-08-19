class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.references :user, foreign_key: true
      t.references :hymn, foreign_key: true
      t.integer :rating
      t.text :review
      t.integer :helpful
      t.integer :unhelpful

      t.timestamps
    end
  end
end
