require 'minitest/autorun'
require 'minitest/spec'

require './client'

describe Client do
  let(:manager)   { Manager.new }
  let(:department) { Department.new(manager) }
  let(:clerk)     { Clerk.new(department) }

  it 'should rather be guided by a clerk to access that info' do
    client = Client.new(clerk)
    client.clerk.manager.wont_be_nil
  end
end
