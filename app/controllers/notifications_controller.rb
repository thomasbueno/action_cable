class NotificationsController < ApplicationController
 def create
   return head :bad_request unless params[:message] && params[:user]


   Notification.create!(
     user: params[:user],
     message: params[:message]
   )


   head :ok
 end
end