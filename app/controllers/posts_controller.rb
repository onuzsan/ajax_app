class PostsController < ApplicationController

  def index  # indexアクションを定義した
    @posts = Post.order(id: "DESC")
  end

  # def new
  # end

  def create
   
    post = Post.create(content: params[:content])
    rrender json:{ post: post }
  end

end
