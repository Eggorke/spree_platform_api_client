# SpreePlatformApiClient

This gem is the simple API client for spree platform API.

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add spree_platform_api_client

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install spree_platform_api_client

## Usage

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

SpreePlatformApiClient::Client.config.custom_endpoints = {
  some_endpoint_name: "/api/v2/platform/some_custom_endpoint"
}

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/spree_platform_api_client. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/spree_platform_api_client/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the SpreePlatformApiClient project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/spree_platform_api_client/blob/master/CODE_OF_CONDUCT.md).