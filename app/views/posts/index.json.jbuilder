json.foo "bar"
json.cookies "awesome"
json.posts @posts do |post|
  json.extract! post, :id, :category
  json.url post.image.url
#  json.delete_url delete_image_path(post)
#  json.user do
#    json.email post.user.email
#  end
end
