require 'compass'
extension_path = File.expand_path(File.join(File.dirname(__FILE__), "."))

Compass::Frameworks.register('toadstool', :path => extension_path)

module Toadstool
  def self.root
    Engine.root
  end
  
  
  # module Rails
    class Engine < ::Rails::Engine
      config.autoload_paths += Dir["#{Toadstool.root}/lib/**/"]

      # paths['app/views']         << "../app/views"
            # puts paths

    end
  # end
end
