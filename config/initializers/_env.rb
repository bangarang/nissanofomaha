# config/initializers/_env.rb
unless Rails.env.production?
	ENV["AWS_ACCESS_KEY_ID"] = 'AKIAIZUTKKQXQPSDMPPQ'
	ENV["AWS_SECRET_ACCESS_KEY"] = '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'
	ENV["AWS_S3_BUCKET"] = 'photouploadtestlxrck'
end