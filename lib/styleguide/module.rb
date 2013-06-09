module Styleguide
  class Module
    include Styleguide::Example

    def initialize(full_path)
      define_location(full_path, Styleguide::Modules.directory, Styleguide::Modules.sass_directory)
    end

      # def partial
      #   path = @full_path.relative_path_from(Pathname.new(views_folder))
      #   File.join(path.dirname, friendly_name)
      # end

      def partial
        # path = @full_path.relative_path_from(Pathname.new(views_folder))
        # File.join(path.dirname, friendly_name).to_s.match(/([\w\/_-]+)/).to_s
        # File.join('modules', @full_path.dirname.basename, file_name).to_s.match(/([\w\/-]+)/).to_s
        
        # file_name.to_s.match(/_*([\w\/_-]+)/).to_s
        
        # file_name.to_s.match(/([[:alnum:]_-]+)/)[0].to_s
        
        
        
        @full_path
      end

    def slug
      "#{relative_to_root}.module"
    end
  end
end
