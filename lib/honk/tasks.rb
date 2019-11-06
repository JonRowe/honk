require 'honk'
require 'rake'
require 'rake/tasklib'

module Honk
  class Task < ::Rake::TaskLib
     def initialize
       desc "Honk!"
       task :honk do
         Honk.()
       end

       desc "Throw the rake in the lake"
       task lake: :honk do
       end
     end
  end
end

Honk::Task.new
