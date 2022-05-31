# frozen_string_literal: true

class Log < ApplicationRecord
  validates :message, presence: true
  validates :task_id, presence: true

  after_create :log_task_details

  private

  def log_task_details
    BaseWorkerJob.perform_async('name')
  end
end
