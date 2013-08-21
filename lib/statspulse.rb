require "statspulse/version"

module Statspulse

  def self.ping(location, status)
    require "net/http"
    require "uri"

    uri = URI.parse("http://statspulse.com/capture/#{location}")

    # Full control
    http = Net::HTTP.new(uri.host, uri.port)

    request = Net::HTTP::Put.new(uri.request_uri)
    request.set_form_data({"sync" => "#{status}"})

    response = http.request(request)
  end

end
