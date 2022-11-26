# frozen_string_literal: true

require_relative "spree_platform_api_client/version"
require_relative "spree_platform_api_client/client"
require_relative "spree_platform_api_client/config"
require_relative "spree_platform_api_client/actions"
require_relative "spree_platform_api_client/response"

module SpreePlatformApiClient
  class Error < StandardError; end
end
