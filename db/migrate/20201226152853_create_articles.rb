class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :name
      t.string :yield
      t.text :ingredients
      t.text :recipe

      t.timestamps
    end
  end
end
