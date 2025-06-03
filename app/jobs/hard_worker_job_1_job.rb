class HardWorkerJob1Job < ApplicationJob
  # sidekiq_options retry: 3   for custom retry
  # sidekiq_options retry: false  for not retrying of job
  
  queue_as :critical

  def perform(name)
    puts "HardWorkerJob1Job....11111111111111 #{name}"
  end
end
