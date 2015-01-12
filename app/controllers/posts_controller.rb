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
    @post = Post.find(params[:id])
  end
  
  def update
    @post = Post.find(params[:id])
    
    if @post.update_attributes(posts_params)
      redirect_to posts_path, :notice => "Post updated"
    else
      render "edit"
    end
  end
  
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path, :notice => "Post deleted"
  end
  
  private 
  
  def posts_params
    params.require(:post).permit(:title, :content)
  end
  
end
