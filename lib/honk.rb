module Honk
  HONK = File.expand_path('honk.aiff', __dir__)

  module_function

  def call
    if system('which afplay', out: '/dev/null', err: '/dev/null')
      `afplay #{HONK}`
    elsif system('which mplayer', out: '/dev/null', err: '/dev/null')
      `mplayer #{HONK}`
    else
      raise "No `afplay` or `mplayer` executable"
    end
  end
end
