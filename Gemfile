source :rubygems
gem 'resque',              '~> 1.17.0'
gem 'resque-meta',         '~> 1.0.3'
gem 'resque-heartbeat',    '~> 0.0.2'

platforms :ruby_18 do
  gem 'SystemTimer'
end

gem 'vagrant',       "0.7.7"
# gem 'vagrant',      :git => 'git://github.com/mitchellh/vagrant.git'
# gem 'vagrant',       "~>  0.8.2"

gem 'net-ssh'
gem 'net-ssh-shell', '~> 0.2.0'
gem 'hashr',         '~> 0.0.9'
gem "multi_json"

# Makes it possible to symlink certain gems to vendor and use local clones. MK.
def custom_gem(name, options = Hash.new)
  local_path = File.expand_path("../vendor/#{name}", __FILE__)
  if File.exist?(local_path)
    gem name, options.merge(:path => local_path).delete_if { |key, _| [:git, :branch].include?(key) }
  else
    gem name, options
  end
end

# amqp migration is a work in progress but it does not affect resque-based worker in any way
custom_gem "amqp",         :git => "git://github.com/ruby-amqp/amqp.git"
custom_gem "amq-client",   :git => "git://github.com/ruby-amqp/amq-client.git"
custom_gem "amq-protocol", :git => "git://github.com/ruby-amqp/amq-protocol.git"
custom_gem "eventmachine", :git => "git://github.com/eventmachine/eventmachine.git"

gem 'faraday', '~> 0.7.3'
gem 'rake', '~> 0.9.2'
gem 'thor'
gem 'god'

group :development do
  gem 'yard', '~> 0.7.1'
  gem 'rdiscount'
end

group :test do
  gem 'mocha'
  gem 'test_declarative'
  # gem 'web-socket-ruby'
  # gem 'fakeredis'
  # gem 'fakeweb'

  platforms :ruby_18 do
    gem 'minitest'
    gem 'minitest_tu_shim'
  end

  platforms :mri_18 do
    gem 'ruby-debug'
  end

  platforms :mri_19 do
    gem 'ruby-debug19'
  end

  gem "evented-spec", :git => "git://github.com/ruby-amqp/evented-spec.git"
end
