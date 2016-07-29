class GraphsController < ApplicationController
  before_action :authenticate_user!

  def index
    @jobs = Job.where(user_id: current_user.id)

    @buckets = { "No Salary Data":0,  "< 40000":0, "40000 < 50000":0, "50000 < 60000":0, "60000 < 70000":0, ">70000":0 }
    @jobs.each do |job|
      if not job.salary
        @buckets[:"No Salary Data"] += 1
      elsif job.salary < 40000
        @buckets[:"< 40000"] += 1
      elsif job.salary < 50000
        @buckets[:"40000 < 50000"] += 1
      elsif job.salary < 60000
        @buckets[:"50000 < 60000"] += 1
      elsif job.salary < 70000
        @buckets[:"60000 < 70000"] += 1
      else
        @buckets[:">70000"] += 1
      end
      puts @buckets
    end

    @applied = []
    @jobs.each do |job|
      if job.applied_date
        @applied << job
      end
      puts @applied
    end

    @interviewed = []
    @jobs.each do |job|
      if job.interview_date
        @interiewed << job
      end
      puts @interviewed
    end

    @offers = []
    @jobs.each do |job|
      if job.offer_date
        @offers << job
      end
      puts @offers
    end

  end
end
