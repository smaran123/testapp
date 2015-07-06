class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter
      t.string :commnet
      t.integer :article_id
      t.timestamps null: false
    end
  end
end
