class HardWorkerJob3Job < ApplicationJob
  queue_as :critical

  def perform(name)
    puts "HardWorkerJob3Job....3333333333 #{name}"
  end
end
