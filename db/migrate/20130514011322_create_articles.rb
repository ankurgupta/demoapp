class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :name
      t.text :description
      t.boolean :published, :default => false
      t.timestamps
    end
  end
end
