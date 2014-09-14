class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :posts, foreign_key: :author_id
  has_many :comments
end
