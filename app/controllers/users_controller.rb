class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
    @name = @user.name
    @posts = @user.posts
    @currentRoomUser = RoomUser.where(user_id: current_user.id)
    @receiveUser = RoomUser.where(user_id: @user.id)

    unless @user.id == current_user.id
      @currentRoomUser.each do |cu|
        @receiveUser.each do |u|
          if cu.room_id == u.room_id then
            @haveRoom = true
            @roomId = cu.room_id
          end
        end
      end
      unless @haveRoom
        @room = Room.new
        @roomuser = RoomUser.new
      end
    end
  end
end
