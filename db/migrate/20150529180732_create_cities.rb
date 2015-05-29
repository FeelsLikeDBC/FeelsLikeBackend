class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name
      t.string :state
      t.float :lat
      t.float :lng
      t.string :nickname

      t.timestamps null: false
    end
  end
end

# City.create(name: 'Chicago',state: 'IL',lat: '41.8369',lng: '-87.6847',nickname: 'CHI')
# City.create(name: 'Richmond',state: 'VA',lat: '37.5333',lng: '-77.4667',nickname: 'RVA')
# City.create(name: 'San_Francisco',state: 'CA',lat: '37.7833,'lng: '-122.4167',nickname: 'SF')
# City.create(name: 'New_York',state: 'NY',lat: '40.7127',lng: '-74.0059',nickname: 'NYC')
# City.create(name: 'Kansas_City',state: 'KS',lat: '39.0997',lng: '-94.5783',nickname: 'KC')