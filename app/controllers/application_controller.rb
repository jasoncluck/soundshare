class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :soundcloud_init

  def soundcloud_init
    @client = Soundcloud.new(:client_id => 'da1368916c4f898320127b2cd453d36f')
    track_url = 'http://soundcloud.com/forss/flickermood'
    @embed_info = @client.get('/oembed', :url => track_url)
    @query = Query.new
  end
end
