class GroupsController < ApplicationController

  def index
    @groups = Group.order("created_at DESC")
  end

  def new
    @group = Group.new
    @group.users << current_user
  end

  def create
    @group = Group.new(group_params)
    if @group.save
      flash[:notice] = 'グループ作成しました。'
      redirect_to groups_path
    else
      render :new
    end
  end
  
  def show
    @group = Group.find(params[:id])
    unless @group.users.include?(current_user)
      @group.users << current_user
    end
    @groupposts = Grouppost.where(group_id: @group.id).all
    @grouppost = Grouppost.new
  end

  private
  def group_params
    params.require(:group).permit(:group_name)
  end
end
