json.extract! post, :id, :title, :subtitle, :image_post, :body_text, :user_id, :category_id, :created_at, :updated_at
json.url post_url(post, format: :json)