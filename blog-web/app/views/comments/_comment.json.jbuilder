json.extract! comment, :id, :description, :visible, :name, :post_id, :created_at, :updated_at
json.url comment_url(comment, format: :json)