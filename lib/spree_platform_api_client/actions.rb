module SpreePlatformApiClient
  module Actions
    def index(endpoint_name, params = {})
      action(
        authenticated_client
          .use(:auto_deflate)
          .get(build_collection_uri(get_path(endpoint_name)), params: params)
      )
    end

    def show(endpoint_name, resource_id, params = {})
      action(
        authenticated_client
          .use(:auto_deflate)
          .get(build_resource_uri(get_path(endpoint_name), resource_id), params: params)
      )
    end

    def create(endpoint_name, params = {})
      action(authenticated_client.post(build_collection_uri(get_path(endpoint_name)), json: params))
    end

    def update(endpoint_name, resource_id, params = {})
      action(authenticated_client.patch(build_resource_uri(get_path(endpoint_name), resource_id), json: params))
    end

    def delete(endpoint_name, resource_id)
      action(authenticated_client.delete(build_resource_uri(get_path(endpoint_name), resource_id)))
    end

    private

    def action(req)
      SpreePlatformApiClient::Response.new(req)
    end
  end
end

SpreePlatformApiClient::Client.include SpreePlatformApiClient::Actions