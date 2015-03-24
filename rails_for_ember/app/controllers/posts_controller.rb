# Thesis = request data, then return data
class PostsController < ApplicationController
  # Index action (specified in route)
  def index
    # Post is the model
    @posts = Post.all
    # If you wanted you could put raw json here you could.
    # i.e. render json: {posts: [id:1, title: ...]}
    render json: @posts
  end

  def show
    #  Query data
    @post = Post.find(params[:id])
    #  Pass data out as json
    render json: @post
  end

end
