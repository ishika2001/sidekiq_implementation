
require 'sidekiq/scheduler'
require 'sidekiq'
require 'sidekiq-cron'


# Sidekiq.configure_server do |config|
#   config.redis = { url: ENV.fetch('REDIS_URL', 'redis://localhost:6379/0') }
# end
# Sidekiq.configure_server do |config|
#   config.on(:startup) do
#     Sidekiq.schedule = YAML.load_file(File.expand_path('../../sidekiq.yml', __FILE__))[:schedule]
#     SidekiqScheduler::Scheduler.instance.reload_schedule!
#   end
# end

Sidekiq.configure_server do |config|
  config.redis = { url: ENV.fetch('REDIS_URL', 'redis://localhost:6379/0') }

  schedule_file = File.expand_path('../../config/sidekiq_cron.yml', __FILE__)
  if File.exist?(schedule_file)
    Sidekiq::Cron::Job.load_from_hash YAML.load_file(schedule_file)
  end
end

Sidekiq.configure_client do |config|
  config.redis = { url: ENV.fetch('REDIS_URL', 'redis://localhost:6379/0') }
end


# schedule_file = "config/sidekiq_cron.yml"

# if File.exist?(schedule_file) && Sidekiq.server?
#   Sidekiq::Cron::Job.load_from_hash YAML.load_file(schedule_file)
# end
