require 'minitest/autorun'
require 'minitest/spec'

require './rename_method/user_service'

describe UserService do
  it 'can log in' do
    assert UserService.sign_in('jose', 'secret')
  end
end
