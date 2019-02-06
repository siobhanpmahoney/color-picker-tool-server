require 'ddtrace'
require 'active_record'

Datadog.configure do |c|
  # This will activate auto-instrumentation for Rails
  c.use :rails
  c.use :active_record
end
