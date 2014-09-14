5.times do
  User.create(username: Faker::Name.name)
end

5.times do |id|
  user = User.find(id+1)
  post = Post.create(title: Faker::Lorem.sentence)
  user.comments << Comment.create(content: Faker::Lorem.sentence, post: post)
  # user.comments.create(title: Faker::Lorem.sentence)
  # Comment.create(title: Faker::Lorem.sentence, user: user)
  user.posts << post
end

