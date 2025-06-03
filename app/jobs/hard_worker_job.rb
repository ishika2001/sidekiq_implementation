class HardWorkerJob < ApplicationJob
  queue_as :default

  def perform(name)
    puts "Processing job for #{name}"
    sleep 3
    puts "Done processing #{name}"
  end
end
