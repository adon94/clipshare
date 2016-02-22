class UsersController < ApplicationController
	before_action :signed_in?, only: [:index, :edit, :update, :destroy,
										:following, :followers]
										
	def create
		@user = User.new(params[:user])
	 
		if @user.save
		  # Tell the UserMailer to send a welcome email after save
		  UserMailer.welcome_email(@user).deliver_now
		end
    end

	def index
	  @users = User.all
	end
	
	def show
	  @user = User.find(params[:id])
	end
	
	def following
    @title = "Following"
    @user  = User.find(params[:id])
    @users = @user.following(page: params[:page])
    render 'show_follow'
  end

  def followers
    @title = "Followers"
    @user  = User.find(params[:id])
    @users = @user.followers(page: params[:page])
    render 'show_follow'
  end
end