class SessionsController < ApplicationController


  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to '/'
    else
      session[:name] = params[:name]
      redirect_to secrets_show_path
    end
  end

  def destroy
    session[:name] = nil
    redirect_to '/'
  end

end
