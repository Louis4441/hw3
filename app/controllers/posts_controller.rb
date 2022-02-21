class PostsController < ApplicationController

    # show isn't required and not in use
    # I just used it to experiment and thought I'd leave it in
    def show
        @post = Post.find(params["id"])
    end

    def new
        @post = Post.new
        @post.place_id = params["place_id"]
    end

    def create
        @post = Post.new(params["post"])
        @post.save
        redirect_to "/places"
    end

end
