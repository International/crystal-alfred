# alfred

Utility lib to create items in JSON format for Alfred

## Installation


Add this to your application's `shard.yml`:

```yaml
dependencies:
  alfred:
    github: International/crystal-alfred
```


## Usage

At this moment, the only supported format is JSON.

```crystal
require "alfred"

response = Alfred::Response.new
response << Alfred::Item.new("title", "subtitle", "arg", Alfred::Icon.new("icon","icon.png"))

puts response.to_json
# {"items":[{"title":"title","subtitle":"subtitle","arg":"arg","icon":{"type":"icon","path":"icon.png"}}]}

```

When using `Alfred::Item`, probably the parameter you'll most likely be interested in is `arg`.
This is the parameter that gets sent further when you select an item from the list.

## Contributing

1. Fork it ( https://github.com/International/crystal-alfred/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [International](https://github.com/International) George Opritescu - creator, maintainer
