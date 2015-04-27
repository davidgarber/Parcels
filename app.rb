require('sinatra')
require('sinatra/reloader')
require('./lib/parcels')

get('/') do
  erb(:index)
end

get('/results') do
  test_parcel = Parcels.new(params.fetch('height').to_i, params.fetch('width').to_i, params.fetch('length').to_i, params.fetch('weight').to_i)
  @volumes = test_parcel.volume()
  @charge = test_parcel.cost_to_ship()
  erb(:results)
end
