module CommonAssets
  class ExceptionsController < ApplicationController

    protect_from_forgery

    skip_before_action :authenticate_user!, raise: false
    
    # layout :layout

    def show
      render params[:status].to_s, layout: false
    end

  end
end