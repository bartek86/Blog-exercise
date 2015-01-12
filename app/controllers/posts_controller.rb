class PostsController < ApplicationController
  
  def index
    @posts = Post.all
  end
  
  def show
    @post = Post.find(params[:id])
  end
  
  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new(posts_params)
    
    if @post.save
      redirect_to posts_path, :notice => "Post saved"
    else
      render "new"
    end
  end
  
  def edit
  end
  
  def update
  end
  
  def destroy
  end
  
  private 
  
  def posts_params
    params.require(:post).permit(:title, :content)
  end
  
end
