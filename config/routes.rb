# Toadstool::Application.routes.draw do
Rails.application.routes.draw do 
  namespace :styleguide do
    ['color_palettes', 'forms', 'grids', 'typography', 'modules', 'patterns'].each do |action|
      get "/#{action}" => "styleguide##{action}"
    end
    get '/' => 'styleguide#typography'

    get '/examples/*example' => 'styleguide/examples#show', :as  => :styleguide_example
  end
end

