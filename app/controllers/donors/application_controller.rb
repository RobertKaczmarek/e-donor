module Donors
  class ApplicationController < ActionController::Base
    before_action :authenticate_donor!
  end
end
