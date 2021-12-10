json.extract! blog, :id, :content, :userID, :conmmentID, :time, :status, :created_at, :updated_at
json.url blog_url(blog, format: :json)
