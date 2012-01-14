class ApplicationController < ActionController::Base
  protect_from_forgery

  private

  #there are many paths available e.g. after_sign_up_path_for, after_sign_out_path_for etc
  def after_sign_in_path_for(resource_or_scope)
    #crappy code because of L:13
    #if sign up then to user#show else user#edit
    current_user.sign_in_count <= 1 ? new_user_path : current_user
  end

  #doesn't work!!!
  def after_sign_up_path_for(resource_or_scope)
      new_user_path
    end
end
