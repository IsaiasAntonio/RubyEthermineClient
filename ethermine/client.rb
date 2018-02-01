require 'net/http'
require 'json'

module Ethermine
  module Client
    BASE_URL = 'https://api.ethermine.org/'
    BASE_URL2= 'https://ethpool.org/'

    def request(uri)
      send_request("#{BASE_URL}#{uri}")
    end

    def send_request(url)
      request_uri = URI(url)
      response = Net::HTTP.get_response(request_uri)
      raise StandardError, response.body unless response.message == 'OK'
      JSON.parse(response.body)['data']
    end

    def customrequest(uri)
      send_request("#{BASE_URL}#{uri})
    end

  end
end
