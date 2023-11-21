class ApplicationController < ActionController::Base
    include Pagy::Backend
    # app/controllers/application_controller.rb
    protect_from_forgery with: :exception

    helper_method :unread_notifications_count

def unread_notifications_count
  user_signed_in? ? current_user.notifications.unread.count : 0
end
def user_signed_in
  render json: { signed_in: user_signed_in? }
end
def current_user_data
  if user_signed_in?
    render json: current_user.as_json(only: [:id, :email, :first_name, :last_name])
 # You might want to limit the fields returned for security reasons
  else
    render json: { error: "No user signed in" }, status: :unauthorized
  end
end



end
