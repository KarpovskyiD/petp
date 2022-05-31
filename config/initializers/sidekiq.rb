Sidekiq.configure_client do |config|
  config.redis = { url: 'redis://127.0.0.1:6379', size: 4, network_timeout: 5 }
end

Sidekiq.configure_server do |config|
  config.redis = { url: 'redis://127.0.0.1:6379', size: 4, network_timeout: 5 }
end

schedule_file = 'config/schedule.yml'
Sidekiq::Cron::Job.load_from_hash YAML.load_file(schedule_file) if File.exist?(schedule_file) && Sidekiq.server?
