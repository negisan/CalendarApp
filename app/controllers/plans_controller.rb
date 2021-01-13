class PlansController < ApplicationController
  before_action :set_plan, only: [:show, :edit, :update, :destroy]

  def index
    @plans = Plan.all
  end

  def new
    @plan = Plan.new
  end

  def create
    @plan = Plan.new(plan_params)
    if @plan.save
      redirect_to plans_url
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
      redirect_to plans_url
    else
      render :edit
    end
  end

  def destroy
  end


  private
    def set_plan
      @plan = Plan.find_by(id: params[:id])
    end

    def plan_params
      params.require(:plan).permit(:start_time, :label, :detail)
    end
end
