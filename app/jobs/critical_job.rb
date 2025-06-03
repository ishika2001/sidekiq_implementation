class CriticalJob < ApplicationJob
  queue_as :critical

  def perform(*args)
    puts "Urgent job running"
    sleep 3
    puts "CriticalJob Done processing"
  end
end
