class SessionsController < ApplicationController
  def new
  end
  def create
    redirect_to sessions_new_path and return if params[:name].blank?
    session[:name] = params[:name]
    redirect_to root_path
  end
  def destroy
    session.delete(:name)
    render :new
  end
end
