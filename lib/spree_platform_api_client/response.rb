module SpreePlatformApiClient
  class Response
    HTTP_OK_CODES = %w(200 201 202 203 204 205 206 207 208 226)

    attr_accessor :response
    def initialize(response)
      @response = response
    end

    def parse
      response.parse(:json)
    rescue JSON::ParserError
      response
    end

    def success?
      HTTP_OK_CODES.include?(response.code)
    end

    def reason
      response.reason
    end

    def code
      response.code
    end

    def error_response
      "#{response.code} #{response.reason}"
    end
  end
end