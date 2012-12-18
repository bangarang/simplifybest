CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',
    :aws_access_key_id      => 'AKIAIPUODYHAKV34GWOA',
    :aws_secret_access_key  => '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'
  }
  config.fog_directory  = 'simplifybesttest' # bucket name
end