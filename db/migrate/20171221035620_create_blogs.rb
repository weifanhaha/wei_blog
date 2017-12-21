class CreateBlogs < ActiveRecord::Migration[5.1]
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :content
      t.string :image
      t.string :category

      t.timestamps
    end
  end
end
