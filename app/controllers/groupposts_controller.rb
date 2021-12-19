class GrouppostsController < ApplicationController

  def create
    @group = Group.find(params[:group_id])
    @grouppost = @group.groupposts.new(grouppost_params)
    if @grouppost.save
      redirect_to group_path(@group.id)
    else
      flesh[:alert] = "メッセージの送信に失敗しました。"
    end
  end

  private
  def grouppost_params
    params.require(:grouppost).permit(:user_id, :group_id, :content).merge(user_id: current_user.id)
  end
end
