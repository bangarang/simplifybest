CarrierWave.configure do |config|
	config.cache_dir = "#{Rails.root}/tmp/"
	config.permissions = 0666
	config.fog_credentials = {
		:provider 				=> 'AWS',
		:aws_access_key_id      => ENV["AWS_ACCESS_KEY_ID"],
		:aws_secret_access_key  => ENV["AWS_SECRET_ACCESS_KEY"]
	}
	config.storage = :fog
	config.fog_directory = ENV["AWS_S3_BUCKET"],
	config.asset_host     = 'http://assets.simplifybest.com' 
end