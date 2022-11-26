# SpreePlatformApiClient

This gem is the simple API client for spree platform API.

## Installation

Install the gem and add to the application's Gemfile by executing:
```ruby
bundle add spree_platform_api_client
```

If bundler is not being used to manage dependencies, install the gem by executing:
```ruby
gem install spree_platform_api_client
```
    
Or add this line to your application's Gemfile:
```ruby
gem 'spree_platform_api_client'
```

## Usage

```ruby
require 'spree_platform_api_client'

client = SpreePlatformApiClient::Client.new(
  host:          "your_api_host",
  client_id:     "client_id",
  client_secret: "client_secret",
  username:      "username",
  password:      "password"
)

response = client.index(:orders, {page:1, per_page: 50})
response.parse
```

To add new endpoints create initializer, or call directly from the executable file:
```ruby
SpreePlatformApiClient::Client.config.custom_endpoints = { some_endpoint_name: "/api/v2/platform/some_custom_endpoint", ..... }
```

SpreePlatformApiClient::Client supports different types of api calls, which names are the same as controllers actions names ( .index, .create, .show, .update, .delete )

Examples:
```ruby
client.index(:orders, {})
client.create(:orders, {body_there})
client.update(:orders, order_id, {params_there})
client.show(:orders, order_id, {params})
client.delete(:orders, order_id)
```

List of default endpoints:
```ruby
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
```

platform_api_namespace could be overriden through the config at initializer

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/spree_platform_api_client. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/Eggorke/spree_platform_api_client/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the SpreePlatformApiClient project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/Eggorke/spree_platform_api_client/blob/master/CODE_OF_CONDUCT.md).
