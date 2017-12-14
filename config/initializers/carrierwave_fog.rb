CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     ENV["AWS_KEY"],
    aws_secret_access_key: ENV["AWS_SECRET"],
    region:                'eu-west-2',                  # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = 'andrew-makers-yelp-images'                          # required
  config.fog_public     = false                                        # optional, defaults to true
  config.fog_attributes = { cache_control: "public, max-age=#{365.day.to_i}" } # optional, defaults to {}
end
