module Styleguide
  module Modules
    @@module_directory = File.join(Toadstool.root, 'app', 'views', 'styleguide', 'modules')
    @@module_sass_directory = File.join(Toadstool.root, 'app', 'assets', 'stylesheets', 'modules')

    def self.directory
      Pathname.new(@@module_directory)
    end

    def self.sass_directory
      Pathname.new(@@module_sass_directory)
    end
  end
end
