module Authentication
  extend ActiveSupport::Concern

  included do
    before_action :signed_in?
  end

  def signed_in?
    return true if authenticated_user

    redirect_to '/'
  end

  private

  def start_sessions(user)
    Current.user = user
    cookies[:sessions_token] = SecureRandom.alphanumeric(16)
  end

  def authenticated_user
    cookies[:sessions_token].present?
  end
end
