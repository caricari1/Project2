class GraphsController < ApplicationController
  def index
    @jobs = Job.all
    # @jobs = Job.where(user_id: current_user.id)
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
  end
end
