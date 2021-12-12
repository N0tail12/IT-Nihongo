json.extract! comment, :id, :commentID, :blogID, :contentComment, :userID, :created_at, :updated_at
json.url comment_url(comment, format: :json)
