# frozen_string_literal: true

class BaseWorkerJob
  include Sidekiq::Job

  def perform
    puts 'name'
  end
end
