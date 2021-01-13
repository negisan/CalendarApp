class PlansController < ApplicationController
  before_action :set_plan, only: [:show, :edit, :update, :destroy]

  def index
    @plans = current_user.plans.all
  end

  def new
    @plan = Plan.new
  end

  def create
    @plan = current_user.plans.new(plan_params)
    if @plan.save
      redirect_to plans_url, flash: {success: "#{@plan.label}を作成しました"}
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @plan.update(plan_params)
      redirect_to plans_url, flash: {success: "#{@plan.label}を更新しました"}
    else
      render :edit
    end
  end

  def destroy
    @plan.destroy!
    redirect_to plans_url, flash: {danger: "#{@plan.label}を削除しました"}
  end


  private
    def set_plan
      @plan = current_user.plans.find_by(id: params[:id])
    end

    def plan_params
      params.require(:plan).permit(:start_time, :label, :detail)
    end
end
