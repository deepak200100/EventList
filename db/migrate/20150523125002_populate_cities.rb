class PopulateCities < ActiveRecord::Migration
  def change
  	City.create({:city_name => "Bangalore"})
  	City.create({:city_name => "Chennai"})
  end
end
