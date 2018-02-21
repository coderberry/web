User.create!(
  email: 'user@example.com',
  password: 'password',
  password_confirmation: 'password',
  confirmed_at: Time.current
) if Rails.env.development?