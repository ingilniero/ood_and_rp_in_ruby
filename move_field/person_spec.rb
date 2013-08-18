require 'minitest/spec'
require 'minitest/autorun'

require './move_field/person'

describe Person do
  it 'has a phone number' do
    person = Person.new(locale: :pt, phone: '555-0342')
    person.full_phone.must_equal '+351 555-0342'
  end
end
