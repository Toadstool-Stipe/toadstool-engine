class Styleguide::ExamplesController < ActionController::Base

  layout 'styleguide'

  def show
    @example = Styleguide::FileLocator.get(params[:example], params[:format])
    @data = Styleguide::Fixtures.get(params[:example]) if module?
  end

  private

  def module?
    params[:format] == 'module'
  end
end
