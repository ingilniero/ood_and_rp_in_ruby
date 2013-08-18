require 'minitest/spec'
require 'minitest/autorun'

require './form_template_method/ticket'

describe Ticket do
  it 'has a calculated price' do
    Ticket.new.price.must_equal 2.0
  end

  it 'costs less if is a senior' do
    SeniorTicket.new.price.must_equal 1.5
  end

  it 'costs less if is a junior' do
    JuniorTicket.new.price.must_equal 1.0
  end
end
