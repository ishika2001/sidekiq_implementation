class HardWorkerJob4Job < ApplicationJob
  queue_as :critical

  def perform(name)
    puts "HardWorkerJob4Job....44444444 #{name}"
  end
end
