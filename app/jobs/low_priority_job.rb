class LowPriorityJob < ApplicationJob
  queue_as :low

  def perform(*args)
    puts "Low"
    sleep 3
    puts "LowPriorityJob Done!"
  end
end
