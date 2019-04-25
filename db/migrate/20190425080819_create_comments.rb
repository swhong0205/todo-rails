class CreateComments < ActiveRecord::Migration[5.2]
  def self.up
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      t.references :post, foreign_key: true

      t.timestamps
    end

    add_index :comments, :post_id
  end
  def self.down
    drop_table :comments
  end
end
