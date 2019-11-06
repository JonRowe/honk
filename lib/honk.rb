module Honk
  HONK = File.expand_path('honk.aiff', __dir__)

  module_function

  def call
    `afplay #{HONK}`
  end
end
