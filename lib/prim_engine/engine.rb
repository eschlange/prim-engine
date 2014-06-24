require 'active_resource'

module PrimEngine
  class Engine < ::Rails::Engine
    isolate_namespace PrimEngine
  end
end
