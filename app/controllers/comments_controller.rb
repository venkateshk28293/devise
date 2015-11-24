class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create!(:body => params[:comment][:body])
    redirect_to @post, notice: 'Com was successfully created.'
  end
end
