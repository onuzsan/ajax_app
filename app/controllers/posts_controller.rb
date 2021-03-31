class PostsController < ApplicationController

  def index  # indexアクションを定義した
    @posts = Post.order(id: "DESC")
  end

  # def new
  # end

  def create
    Post.create(content: params[:content])
    rails db:migrate
  end

end
