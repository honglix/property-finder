CarrierWave.configure do |config|
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     ENV["access_key_id"],                        # required unless using use_iam_profile
    aws_secret_access_key: ENV["secret_access_key"],                        # required unless
  }
  config.storage = :fog
  config.permissions = 8666
  config.cache_dir = "#{Rails.root}/tmp/"
  config.fog_directory = ENV['FOG_DIRECTORY']
  config.fog_attributes = { 'Cache-Control' => "max-age=#{365.day.to_i}"}
end
