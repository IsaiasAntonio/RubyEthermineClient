require 'net/http'

module Ethermine
  module Client
    BASE_URL = 'https://api.ethermine.org/'

    def request(uri)
      request_uri = URI("#{BASE_URL}#{uri}")
      response = Net::HTTP.get_response(request_uri)
      result = {
        success: response.message,
        data: response.body
      }
    end
  end
end
