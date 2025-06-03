class HardWorkerJob5Job < ApplicationJob
  queue_as :critical

  def perform(name)
    sleep 30
    puts "HardWorkerJob5Job....55555555555 #{name}"
  end
end
