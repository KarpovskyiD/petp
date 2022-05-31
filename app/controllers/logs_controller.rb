# frozen_string_literal: true

class LogsController < ApplicationController
  def get_logs
    Log.new(task_id: '1', message: 'Bla bla bla')
  end
end
