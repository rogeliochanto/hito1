class LikesController < ApplicationController
  def count
    @tweet = Tweet.all.count
  end
end
