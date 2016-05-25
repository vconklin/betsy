require 'httparty'

module ShippingWrapper
  BASE_URL = "http://localhost:3001"

  def self.response(products, place, origin)
    body = { products_specs: products, destination: place, origin: origin }.to_json
    data = HTTParty.post(BASE_URL+"/products", { body: body}).parsed_response
  end

end
