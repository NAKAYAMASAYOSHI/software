class ProfilesController < ApplicationController
  def edit
    @user = User.find_by(uid: session[:login_uid])
    redirect_to tweets_path and return if @user.nil?
    @profile = @user.profile || Profile.new
  end

  def update
    user = User.find_by(uid: session[:login_uid])
    redirect_to tweets_path and return if user.nil?
    profile = user.profile || Profile.new
    profile.message = params[:profile][:message]
    user.profile = profile
    user.save
    profile.save
    redirect_to tweets_path
  end
end
