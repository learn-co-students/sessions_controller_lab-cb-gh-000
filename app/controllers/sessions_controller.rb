class SessionsController < ApplicationController
  def create
    if !params[:name] || params[:name].empty?
      redirect_to action: "new"
    else
      session[:name] = params[:name]
      redirect_to "/"
    end
  end

  def destroy
    unless session[:name].nil?
      session[:name] = nil
    end
    redirect_to "/"
  end

  def new
  end
end
