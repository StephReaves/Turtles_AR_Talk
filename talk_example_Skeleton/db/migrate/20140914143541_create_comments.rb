class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :content
      t.references :user
      t.references :post
      # t.belongs_to :user
      # t.integer :user_id

      t.timestamps
    end
  end
end
