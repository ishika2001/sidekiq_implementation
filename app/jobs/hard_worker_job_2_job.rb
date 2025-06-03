class HardWorkerJob2Job < ApplicationJob
  queue_as :critical

  def perform(name)
    puts "HardWorkerJob2Job....222222222 #{name}"
  end
end
