class SubsController < ApplicationController

  before_action :require_login

  def index

  end

  def show

  end

  def new

  end

  def create

  end

  def edit
    @sub = Sub.find(params[:id])
  end

  def update
    @sub = current_user.subs.find(params[:id])

    if @sub.update_attributes(sub_params)
      redirect_to sub_url(@sub)
    else
      flash[:errors] = @sub.errors.full_messages
      redirect_to sub_url(@sub)
    end
  end

  private

  def sub_params
    params.require(:sub).permit(:title, :description)
  end


end
