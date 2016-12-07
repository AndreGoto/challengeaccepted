ActionMailer::Base.smtp_settings = {
  address: "smtp.gmail.com",
  port: 587,
  domain: 'gmail.com',
  user_name: ENV['lewagonchallenge@gmail.com'],
  password: ENV['lewagondesafio'],
  authentication: :login,
  enable_starttls_auto: true
}
