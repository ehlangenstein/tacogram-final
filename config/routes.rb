Rails.application.routes.draw do
  resources "likes"
  resources "posts"
  resources "sessions"
  resources "users"

  # Login/logout
  get("/login", { :controller => "sessions", :action => "new" })
  get("/logout", { :controller => "sessions", :action => "destroy" })

  # Define the root route
  get("/", { :controller => "posts", :action => "index" })
end
