class ApplicationController < ActionController::Base
  protect_from_forgery

  private

  #there are many paths available after_sign_up_path_for, after_sign_out_path_for etc
  def after_sign_in_path_for(resource_or_scope)
    current_user
  end

  def after_sign_up_path_for(resource_or_scope)
      new_user_path
    end
end
