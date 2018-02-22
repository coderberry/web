eric = User.where(email: "eric@codesponsor.io").first_or_create(
  password: "password",
  password_confirmation: "password",
  confirmed_at: Time.current
)

properties = Property.create([
  {
    user: eric,
    name: "Code Sponsor",
    url: "https://codesponsor.io"
  },
  {
    user: eric,
    name: "Code Sponsor (repo)",
    url: "https://github.com/codesponsor/code_sponsor"
  }
])