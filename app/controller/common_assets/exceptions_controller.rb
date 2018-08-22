module CommonAssets
  class ExceptionsController < ApplicationController

    protect_from_forgery

    skip_before_action :authenticate_user!, raise: false

    def show
      render layout: 'error'
    end

  end
end