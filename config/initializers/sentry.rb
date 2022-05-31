# frozen_string_literal: true

Sentry.init do |config|
  config.dsn = 'https://ca2a6a5e624243dc9360f7f20d46b818@o1250712.ingest.sentry.io/6415305'
  config.breadcrumbs_logger = %i[active_support_logger http_logger]

  # Set tracesSampleRate to 1.0 to capture 100%
  # of transactions for performance monitoring.
  # We recommend adjusting this value in production
  config.traces_sample_rate = 1.0
  # or
  config.traces_sampler = lambda do |_context|
    true
  end
end
