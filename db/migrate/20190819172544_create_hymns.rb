class CreateHymns < ActiveRecord::Migration[5.2]
  def change
    create_table :hymns do |t|
      t.string :title
      t.text :description
      t.text :story
      t.integer :editorRating
      t.text :editorReview
      t.integer :doctrine
      t.integer :scriptural

      t.timestamps
    end
  end
end
