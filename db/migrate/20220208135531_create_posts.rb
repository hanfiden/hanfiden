class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.text :description
      t.string :image_url
      t.string :source_url

      t.timestamps
    end
  end
end
