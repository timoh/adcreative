CarrierWave.configure do |config|
  #config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     Rails.application.secrets.aws_access_key_id,                        # required
    aws_secret_access_key: Rails.application.secrets.aws_secret_access_key,    # required
    region:                Rails.application.secrets.aws_region
  }
  config.fog_directory  = Rails.application.secrets.aws_fog_directory                          # required
  config.fog_public     = true                                        # optional, defaults to true
  config.fog_attributes = { 'Cache-Control' => "max-age=#{1.day.to_i}" } # optional, defaults to {}
end
