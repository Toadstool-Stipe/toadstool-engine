module Styleguide
  class Pattern
    include Styleguide::Example

    def initialize(full_path)
      define_location(full_path, Styleguide::Patterns.directory, Styleguide::Patterns.sass_directory)
    end

    def partial
      "ui_patterns/#{relative_to_root}".match(/([\/[:alnum:]_-]+)/)[0].to_s
    end


    def slug
      "#{relative_to_root}.pattern"
    end
  end
end

