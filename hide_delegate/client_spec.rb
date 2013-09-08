require 'minitest/autorun'
require 'minitest/spec'

require './client'

describe Client do
  let(:manager)   { Manager.new }
  let(:department) { Department.new(manager) }
  let(:clerk)     { Clerk.new(department) }

  it 'wants to know about the manager through a department' do
    client = Client.new(department)
    client.department.manager.wont_be_nil
  end
end
