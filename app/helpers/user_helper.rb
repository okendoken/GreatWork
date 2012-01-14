module UserHelper
  def is_current_user_page?(user)
    user_signed_in? and user.id == current_user.id
  end

  def is_current_user_successful?
    if params[:a].present? then
      params[:a] == 'yes'
    else
      current_user.successful?
    end ? 'Y' : 'N'
  end
end
