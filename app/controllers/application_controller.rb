class ApplicationController < ActionController::Base

  def success
    flash[:notice] = 'success'
  end

  def error 
    flash[:alert] = 'error'
  end
end
