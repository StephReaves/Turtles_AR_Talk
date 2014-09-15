class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :content
      t.references :post
      t.references :user #=> The two below are the same thing
      # t.belongs_to :user
      # t.integer :user_id

      t.timestamps
    end
  end
end
