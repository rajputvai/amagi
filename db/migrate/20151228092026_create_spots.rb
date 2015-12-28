class CreateSpots < ActiveRecord::Migration
  def change
    create_table :spots do |t|
      t.datetime :aired_at
      t.string :duration
      t.string :client_name
      t.string :channel_name
      t.string :city_name
      t.string :campaign_name
      t.string :brand_name
      t.string :video_path
      t.string :thumbnail_path

      t.timestamps null: false
    end
  end
end
