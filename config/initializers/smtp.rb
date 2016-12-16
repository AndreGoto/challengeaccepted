ActionMailer::Base.smtp_settings = {
  #address: ENV['POSTMARK_SMTP_SERVER'],
  #port: '25',
  #domain: 'heroku.com',
  #user_name: ENV['POSTMARK_API_KEY'],
  #password: ENV['POSTMARK_API_TOKEN'],
  #authentication: :cram_md5,
  #enable_starttls_auto: true
  address: "smtp.gmail.com",
  port: 587,
  domain: 'gmail.com',
  user_name: ENV['GMAIL_ADDRESS'],
  password: ENV['GMAIL_APP_PASSWORD'],
  authentication: :plain,
  enable_starttls_auto: true
}
