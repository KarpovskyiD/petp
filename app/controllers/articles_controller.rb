# frozen_string_literal: true

class ArticlesController < ApplicationController
  def index
    1 / 0
  rescue ZeroDivisionError => e
    Sentry.capture_exception(e)
  end
end
