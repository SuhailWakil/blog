class PostsController < ApplicationController
  def index
    @posts = Post.all
    respond_to do |format|
      format.html
      format.xml { render :xml =>@posts }
      format.json { render :json =>@posts }
    end

  end

  def show
    @post = Post.find(params[:id])
    respond_to do |format|
      format.html
      format.xml { render :xml =>@post }
      format.json { render :json =>@post }
    end
  end 


  def edit
    @post = Post.find(params[:id])
    
  end

  def new
    @post= Post.new
  end
  
  def create
    @post = Post.new(params[:post])
    if @post.save
      redirect_to posts_path, :notice => "Your post was saved"
    else
      render "new"
    end
  end
  
  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(params[:post])
      redirect_to posts_path, :notice => "Updated"
    else
      render "edit"
    end
  end
  
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path, :notice => "Post is deleted!"
  end
  
  
  
end
