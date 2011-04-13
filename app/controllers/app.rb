class Main
  get '/*.css' do
    scss :"css/#{params[:splat][0]}"
  end

  get '/' do
    haml :home
  end
end