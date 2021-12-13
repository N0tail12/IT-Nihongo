json.extract! blog_comment, :id, :user_id, :blog_id, :comment, :created_at, :updated_at
json.url blog_comment_url(blog_comment, format: :json)
