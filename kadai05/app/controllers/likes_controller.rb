class LikesController < ApplicationController
  def create
    tweet = Tweet.find(params[:tweet_id])
    user = User.find_by(uid: session[:login_uid])
    user.like_tweets << tweet if user
    redirect_to tweets_path
  end

  def destroy
    tweet = Tweet.find(params[:id])
    user = User.find_by(uid: session[:login_uid])
    like = tweet.likes.find_by(user_id: user.id) if user
    like.destroy if like
    redirect_to tweets_path
  end
end
