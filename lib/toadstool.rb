require 'compass'
extension_path = File.expand_path(File.join(File.dirname(__FILE__), "."))

Compass::Frameworks.register('toadstool', :path => extension_path)

module Toadstool
  def self.root
    Engine.root
  end
  
  

  class Engine < ::Rails::Engine
    isolate_namespace Toadstool
    config.autoload_paths += Dir["#{Toadstool.root}/lib/**/"]
  end

end
