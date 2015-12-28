Rails.application.routes.draw do

  apipie

  namespace :ui_test, path: 'ui-test' do
    namespace :api, :defaults => {:format => :json} do
      namespace :v1 do 
        resources :spots
      end
    end
  end

  get "/404" => "errors#not_found"
  get "/500" => "errors#exception"

end
