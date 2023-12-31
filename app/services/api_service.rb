class ApiService
  include HTTParty

  base_uri 'https://165.227.94.139'
  format :json

  def self.fetch_dolar_value
    response = get('/api', verify: false)
    return response.parsed_response['dolar']['valor'] if response.success?

    nil
  end
end
