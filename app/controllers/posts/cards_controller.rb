class Posts::CardsController < ApplicationController
  def show
    @post = Post.find(params[:post_id])
  end
end
