require "simple_js_data/version"
require 'simple_js_data/railtie'

module SimpleJsData
  extend ActiveSupport::Concern

  included do
    helper_method :js_data, :include_js_data
  end

private

  def include_js_data
    ActionController::Base.helpers.javascript_tag "window.js_data=#{js_data.to_h.to_json};"
  end

  def js_data
    @js_data ||= OpenStruct.new
  end
end
