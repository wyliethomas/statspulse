require "statspulse/version"

module Statspulse

  def self.ping(key, status)
    require "net/http"
    require "uri"

    puts "GEM"

    uri = URI.parse("http://statspulse.com/capture/#{key}")

    # Full control
    http = Net::HTTP.new(uri.host, uri.port)

    request = Net::HTTP::Put.new(uri.request_uri)
    request.set_form_data({"sync" => "#{status}"})

    #response = http.request(request)
  end

end
