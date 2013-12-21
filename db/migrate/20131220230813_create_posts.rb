class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :gist
      t.string :slug
      t.string :hero_image
      t.string :thumb_image
      t.string :tag
      t.text   :body

      t.timestamps
    end
  end
end
