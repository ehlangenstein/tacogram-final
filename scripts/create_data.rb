Post.destroy_all

post = Post.new
post["body"] = "Delish!"
post["image"] = "https://images.unsplash.com/photo-1618414466256-4b62f39b5b30?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dGFjb3N8ZW58MHwyfDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60"
post.save

post = Post.new
post["body"] = "Tacos, obviously."
post["image"] = "https://images.unsplash.com/photo-1508154048109-de555266b70a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8dGFjb3N8ZW58MHwyfDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60"
post.save

puts "There are now #{Post.all.count} posts."