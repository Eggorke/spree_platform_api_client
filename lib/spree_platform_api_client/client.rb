# frozen_string_literal: true

require "http"

module SpreePlatformApiClient
  class Client

    attr_accessor :host
    def initialize(client_id:, client_secret:, username:, password:, host:)
      @host = host
      @token = nil

      result = HTTP.post(
        URI.join(host, "spree_oauth/token").to_s,
        json: {
          grant_type:    "password",
          scope:         "admin",
          username:      username,
          password:      password,
          client_id:     client_id,
          client_secret: client_secret,
        }
      ).parse

      raise result["error_description"] if result["error"]
      @token = result["access_token"]
    end

    def authenticated?
      !@token.nil?
    end

    def self.config
      @config ||= SpreePlatformApiClient::Config.new
      yield @config if block_given?
      @config
    end

    private

    def get_path(endpoint_name)
      Client.config.endpoints[endpoint_name]
    end

    def build_resource_uri(path, resource_id)
      URI.join(host, "#{path}/#{resource_id}").to_s
    end

    def build_collection_uri(path)
      URI.join(host, path).to_s
    end

    def authenticated_client
      raise "Call 'authenticate!' first" if @token.nil?

      client = HTTP.auth("Bearer #{@token}").headers("Content-Type" => "application/json")
      client
    end
  end
end
