require 'rspec'
require 'vcr'
require 'verizon'

VCR.config do |c|
  c.cassette_library_dir = 'spec/vcr_cassettes'
  c.stub_with :webmock # or :fakeweb
end

RSpec.configure do |config|
  config.extend VCR::RSpec::Macros
end
