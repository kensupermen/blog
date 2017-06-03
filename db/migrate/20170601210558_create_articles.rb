class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.integer :user_id
      t.string :title, index: true
      t.string :body

      t.timestamps
    end
  end
end
