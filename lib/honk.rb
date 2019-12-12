module Honk
  HONK = File.expand_path('honk.aiff', __dir__)

  module_function

  def call
    if run_quietly('which afplay')
      run_quietly("afplay #{HONK}")
    elsif run_quietly('which mplayer')
      run_quietly("mplayer #{HONK}")
    else
      raise "No `afplay` or `mplayer` executable"
    end
  end

  def run_quietly(command)
    system(command, out: '/dev/null', err: '/dev/null')
  end
end
