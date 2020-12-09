class Helpers
  def current_user(session)
    @user = User.find(session[:user_id])
  end

  def is_logged_in?(session)
    if @user
      !!@user
    else
      false
  end
end
