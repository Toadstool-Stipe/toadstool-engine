module StyleguideHelper

  def sass_example(file)
    style = stylesheet(file)
    code_toggle sass_file(style) if File.exists?(style)
  end

  def sass_full_path_example(file)
    code_toggle sass_file(File.new(file)) if File.exists?(file)
  end

  def scss_example(file)
    style = stylesheet(file, '.scss')
    code_toggle sass_file(style) if File.exists?(style)
  end

  def html_example(file_name, directory = '')
    file = haml_file(file_name, directory)
    render :partial => 'styleguide/html_example', :locals => file_hash(file)
  end

  def code_toggle(file)
    render :partial => 'styleguide/code_toggle', :locals => file_hash(file)
  end

  def example_file(file_name)
    file = File.new(file_name)
    render :partial => 'styleguide/module_example', :locals => file_hash(file)
  end

  private

  def stylesheet(file, ext = '.sass')
    File.join(Toadstool.root, 'app', 'assets', 'stylesheets', file + ext)
  end

  def sass_file(style_path)
    File.new(style_path)
  end

  def haml_file(file_name, directory)
    # File.new(File.join(Toadstool.root, 'app', 'views', 'styleguide', directory, file_name + '.erb'))
    File.new(Dir.glob(File.join(Toadstool.root, 'app', 'views', 'styleguide', directory, file_name + '.html.{haml,erb,slim}')).first)
  end

  def file_hash(file)
    { :content => file.read(), :mtime => file.mtime, :path => relative_path(file.path) }
  end

  def relative_path(file_path)
    Pathname.new(file_path).relative_path_from(Toadstool.root).to_s
  end
end
