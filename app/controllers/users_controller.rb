class UsersController < ApplicationController
  load_and_authorize_resource
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to @user, :flash => { :success => 'User was successfully created.' }
    else
      render :action => 'new'
    end
  end

  def update
    @user = User.find(params[:id])

    if params[:user][:password].blank?
      params[:user].delete(:password)
      params[:user].delete(:password_confirmation)
    end

    params[:user][:role_ids] ||= []

    if @user.update_attributes(user_params)
      sign_in(@user, :bypass => true) if @user == current_user
      redirect_to @user, :flash => { :success => 'User was successfully updated.' }
    else
      render :action => 'edit'
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path, :flash => { :success => 'User was successfully deleted.' }
  end

private 
  def user_params
    if can? :manage, User
      params[:user]
    else
      params[:user].delete(:role_ids)
      params[:user].delete(:email)
    end
  end

end
