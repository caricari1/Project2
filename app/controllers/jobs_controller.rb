class JobsController < ApplicationController
  before_action :authenticate_user!

  def index
    @jobs = Job.where(user_id: current_user.id)

    if params[:search]
      @jobs = Job.search(params[:search]).order("created_at DESC")
    else
      @jobs = Job.all
    end
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(job_params)
    if @job.save
      redirect_to jobs_path
    else
      render :new
    end
  end

  def show
    @job = Job.find(params[:id])
  end


  def edit
    @job = Job.find(params[:id])
  end

  def update
    @job = Job.find(params[:id])
    if
      @job.update(self.job_params)
      redirect_to(:action => 'show', :id => @job.id)
    else
      render 'edit'
    end
    end

    def destroy
      @job = Job.find(params[:id])
      @job.destroy
      redirect_to jobs_path
    end


    def job_params
    params.require(:job).permit(
      :title,
      :organization,
      :city,
      :salary,
      :description,
      :date_posted,
      :application_deadline,
      :applied,
      :interview,
      :offer,
      :other_deadline,
      :notes,
      :user_id,
      :applied_date
    )
  end

end
