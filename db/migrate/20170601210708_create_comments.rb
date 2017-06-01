class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.text :comment_message
      t.integer :article_id, index: true

      t.timestamps
    end
  end
end
