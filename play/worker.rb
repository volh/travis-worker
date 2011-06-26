require 'rubygems'
require 'travis/worker'
require 'fixtures/payloads'

ENV['VM'] = 'worker-1'

payload = INCOMING_PAYLOADS['build:gem-release']
Travis::Worker.perform(payload)


