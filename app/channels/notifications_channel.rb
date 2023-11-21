class NotificationsChannel < ApplicationCable::Channel
  def subscribed
    stream_from "global_notifications"
  end
end
