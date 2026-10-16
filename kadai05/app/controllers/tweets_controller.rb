class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all.order(created_at: :desc)
  end

  def create
    user = User.find_by(uid: session[:login_uid])
    if user
      tweet = Tweet.new(message: params[:message])
      tweet.user = user
      tweet.save
    end
    redirect_to tweets_path
  end

  def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy
    redirect_to tweets_path
  end
end
