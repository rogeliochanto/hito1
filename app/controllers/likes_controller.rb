class LikesController < ApplicationController
  before_action :set_like, only: :destroy
  before_action :set_tweet, only: :create

  def create
    @like = @tweet.likes.build(user: current_user)

    respond_to do |format|
      if @like.save
        format.html { redirect_to @tweet, notice: "Like was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @like.destroy
    respond_to do |format|
      format.html { redirect_to @like.tweet, notice: "Like was successfully destroyed." }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_like
      @like = Like.find(params[:id])
    end

    def set_tweet
      @tweet = Tweet.find(params[:tweet_id])
    end
end
