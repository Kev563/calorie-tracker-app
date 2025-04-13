class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path, notice: "Welcome back, #{user.name}!"
    
    elsif user.nil? && params[:name].present? && params[:password].present?
      user = User.new(name: params[:name], email: params[:email], password: params[:password])
      
      if user.save
        session[:user_id] = user.id
        redirect_to root_path, notice: "Welcome, #{user.name}!"
      else
        flash.now[:alert] = user.errors.full_messages.to_sentence
        render :new
      end

    else
      flash.now[:alert] = "Invalid credentials. New users must fill in name, email, and password."
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "Logged out!"
  end
end
