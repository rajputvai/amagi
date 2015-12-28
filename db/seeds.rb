# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'    

csv_file = File.join(Rails.root, 'db/spots.csv')
columns = [:aired_at, :duration, :client_name, :channel_name, :city_name, :campaign_name, :brand_name, :video_path, :thumbnail_path]
values = []
i = 0
CSV.foreach(csv_file) do |row|
  if i != 0
    values.push([row[0], row[1], row[2], row[3], row[4], row[5], row[6], row[7], row[8]])
  end
  i += 1
end
Spot.delete_all()
Spot.import(columns, values)