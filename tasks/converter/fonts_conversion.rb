class Converter
  module FontsConversion
    def process_font_assets
      log_status 'Processing fonts...'
      files   = read_files('fonts', common_font_files)
      save_to = @save_to[:fonts]
      files.each do |name, content|
        save_file "#{save_to}/#{name}", content
      end
    end

    def common_font_files
      @common_font_files ||= get_paths_by_type('fonts', /\.(eot|svg|ttf|woff?)$/)
    end
  end
end
