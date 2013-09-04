require "statspulse/version"

module Statspulse

  def self.api(key, event, url)
    require "net/http"
    require "uri"


    uri = URI.parse("http://127.0.0.1:3001/capture/apis")

    # Full control
    http = Net::HTTP.new(uri.host, uri.port)

    request = Net::HTTP::Post.new(uri.request_uri)
    request.set_form_data({"key" => "#{key}", "event" => "#{event}", "url" => "#{url}"})

    response = http.request(request)
  end

end
