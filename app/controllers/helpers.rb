class Main
  helpers do
    def load_js filenames
      filenames.each do |f|
        filename = "#{f}.js" if f.split('.').last != 'js'
        @specific_javascript_files <<haml("%script{ type: 'text/javascript', src: '/js/#{filename}' }")
      end
    end

    def load_css filenames
      filenames.each do |f|
        filename = "#{f}.css" if f.split('.').last != 'css'
        @specific_stylesheet_files << haml("%link{ rel: 'stylesheet', href: '/#{filename}', media: 'screen', type: 'text/css' }")
      end
    end

    def partial page, options = {}
      haml page, { layout: false }.merge(options)
    end
  end
end