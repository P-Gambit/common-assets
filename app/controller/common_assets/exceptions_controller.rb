module CommonAssets
  class ExceptionsController < ApplicationController

    protect_from_forgery

    skip_before_action :authenticate_user!, raise: false
    
    layout :layout

    def show
      render action: params[:code].to_s
    end

  end
end