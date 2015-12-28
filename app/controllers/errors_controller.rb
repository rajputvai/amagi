class ErrorsController < ApplicationController
  def not_found
    render :json => Oj.dump({"error" => "404 Not found"}), :status => 404
  end

  def exception
    render :json => Oj.dump({"error" => "500 Internal Server Error"}), :status => 500
  end
end
