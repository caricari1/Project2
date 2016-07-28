class GraphsController < ApplicationController
  def index
    @jobs = Job.all
    # @jobs = Job.where(user_id: current_user.id)
    @buckets = { a:0, b:0, c:0, d:0 }
    @jobs.each do |job|
      if not job.salary
        @buckets[:c] += 1
      elsif job.salary < 40000
        @buckets[:a] += 1
      elsif job.salary < 50000
        @buckets[:b] += 1
      else
        @buckets[:d] += 1
      end
      puts @buckets
    end
  end
end
