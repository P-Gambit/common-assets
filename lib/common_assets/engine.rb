module CommonAssets
  module Rails
    class Engine < ::Rails::Engine
      initializer 'common_assets.assets.precompile' do |app|
        %w(stylesheets javascripts fonts images).each do |sub|
          app.config.assets.paths << root.join('assets', sub).to_s
        end

        # sprockets-rails 3 tracks down the calls to `font_path` and `image_path`
        # and automatically precompiles the referenced assets.
        unless Sprockets::Rails::VERSION.split('.', 2)[0].to_i >= 3
          app.config.assets.precompile << %r(iconfont\.(?:eot|svg|ttf|woff?)$)
        end
      end


      initializer :common_assets do |app|
        app.config.exceptions_app = ->(env) { CommonAssets::ExceptionsController.action(:show).call(env) }
      end

    end
  end
end
