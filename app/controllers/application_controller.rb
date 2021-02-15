class ApplicationController < ActionController::Base

  def success
    flash[:notice] = 'success'
  end
end
