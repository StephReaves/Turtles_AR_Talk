class Post < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :author, class_name: 'User'
  #Look up class_name and foreign_key
  has_many :comments
end
