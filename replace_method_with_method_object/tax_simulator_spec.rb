require 'minitest/autorun'
require 'minitest/spec'

require '../replace_method_with_method_object/tax_simulator'

describe TaxSimulator do
  it 'simulates tax returns' do
    TaxSimulator.new("Jose Gilberto").simulate_return(
      income: 10000,
      expenses: 300,
      type: :independent_worker
    ).must_equal 325.0
  end
end
