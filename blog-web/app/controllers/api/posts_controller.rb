class Api::PostsController< ActionController::Base
  def index
    @posts = Post.all
    render json:@posts
  end

  def create
    @post= Post.new(post_params)
    if @post.save
      render json: @post
    else
      render json: @post.errors
    end
  end   

  def post_params
    params.require(:post).permit(:title, :subtitle, :image_post, :body_text, :user_id, :category_id)
  end
end
