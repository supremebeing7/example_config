Config.setup do |config|
  config.const_name = 'Settings'
  config.use_env = true
  config.env_prefix = 'SETTINGS'
  config.env_separator = '__'
  config.env_converter = :downcase
  config.env_parse_values = true
end

puts ENV['SETTINGS__FOO']
# => baz

puts Settings.foo
# => bar

Settings.reload!

puts Settings.foo
# => baz