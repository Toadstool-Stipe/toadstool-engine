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
