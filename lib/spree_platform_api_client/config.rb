require "anyway_config"

module SpreePlatformApiClient
  class Config < Anyway::Config
    attr_config :endpoints,
                :custom_endpoints,
                platform_api_namespace: "/api/v2/platform"

    def endpoints
      custom_endpoints.nil? ? default_endpoints : default_endpoints.merge(custom_endpoints)
    end

    def default_endpoints
      {
        orders: "#{platform_api_namespace}/orders",
        addresses: "#{platform_api_namespace}/addresses",
        adjustments: "#{platform_api_namespace}/adjustments",
        classifications: "#{platform_api_namespace}/classifications",
        countries: "#{platform_api_namespace}/countries",
        cms_pages: "#{platform_api_namespace}/cms_pages",
        cms_sections: "#{platform_api_namespace}/cms_sections",
        line_items: "#{platform_api_namespace}/line_items",
        payments: "#{platform_api_namespace}/payments",
        payment_methods: "#{platform_api_namespace}/payment_methods",
        products: "#{platform_api_namespace}/products",
        promotions: "#{platform_api_namespace}/promotions",
        shipments: "#{platform_api_namespace}/shipments",
        shipping_methods: "#{platform_api_namespace}/shipping_methods",
        states: "#{platform_api_namespace}/states",
        stock_items: "#{platform_api_namespace}/stock_items",
        stock_locations: "#{platform_api_namespace}/stock_locations",
        taxons: "#{platform_api_namespace}/taxons",
        users: "#{platform_api_namespace}/users",
        wishlists: "#{platform_api_namespace}/wishlists",
        wished_items: "#{platform_api_namespace}/wished_items"
      }
    end
  end
end