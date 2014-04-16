if Rails.env.production? && defined?(AssetSync)
  AssetSync.configure do |config|
    config.fog_provider = 'AWS'
    config.aws_access_key_id = ENV['AWS_ACCESS_KEY_ID']
    config.aws_secret_access_key = ENV['AWS_SECRET_ACCESS_KEY']
    config.fog_directory = ENV['FOG_DIRECTORY']
    config.fog_region = ENV['S3_REGION']

    Fog.credentials = { path_style: true }
  end
end