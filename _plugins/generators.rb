# frozen_string_literal: true

Dir.glob(
  File.join(__dir__, 'generators', '*.rb')
).each do |file|
  require_relative File.join(
    'generators',
    File.basename(file, '.rb')
  )
end
