module SimpleJsData
  class Railtie < Rails::Railtie
    initializer 'simple_js_data.initialize' do
      ActionController::Base.send :include, SimpleJsData
    end
  end
end
