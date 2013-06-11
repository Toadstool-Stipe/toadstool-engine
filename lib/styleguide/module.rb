module Styleguide
  class Module
    include Styleguide::Example

    def initialize(full_path)
      define_location(full_path, Styleguide::Modules.directory, Styleguide::Modules.sass_directory)
    end



    def partial
      "modules/#{relative_to_root}".match(/([\/[:alnum:]_-]+)/)[0].to_s
    end

    def slug
      "#{relative_to_root}.module"
    end
  end
end
