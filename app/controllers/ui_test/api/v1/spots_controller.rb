class UiTest::Api::V1::SpotsController < ApplicationController

  resource_description do
    resource_id 'Spots'
    short 'Spots APIs'
    api_base_url 'ui-test/api/v1/spots/'
    description 'Spots APIs'
  end

  def index
    spots = Spot.select(
      :id,
      :aired_at, 
      :duration, 
      :client_name, 
      :channel_name, 
      :city_name, 
      :campaign_name, 
      :brand_name, 
      :video_path, 
      :thumbnail_path
    ).limit(1000).order("RANDOM()")
    render :json => Oj.dump(spots, :mode => :compat), :status => 200
  end

end
