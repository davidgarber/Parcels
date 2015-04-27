require('rspec')
require('parcels')

describe(Parcels) do
  describe('#volume') do
    it("determines the volume of the package") do
    new_parcel = Parcels.new(5,5,10,10)
    expect(new_parcel.volume()).to(eq(250))
    end
  end
  describe('#cost_to_ship') do
    it("determines the cost to ship the package") do
    new_parcel = Parcels.new(5,5,10,10)
    expect(new_parcel.cost_to_ship()).to(eq(2500))
    end
  end
end
