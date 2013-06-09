module Styleguide
  class Pattern
    include Styleguide::Example

    def initialize(full_path)
      define_location(full_path, Styleguide::Patterns.directory, Styleguide::Patterns.sass_directory)
    end

      def partial
        File.join('ui_patterns', @full_path.dirname.basename, file_name).to_s.match(/([\w\/_-]+)/).to_s
      end

    def slug
      "#{relative_to_root}.pattern"
    end
  end
end

