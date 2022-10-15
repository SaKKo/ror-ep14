10.times do |t|
  u = User.new(email: "saklism+demo#{t + 1}@gmail.com")
  u.password = "12341234"
  u.first_name = "sakko"
  u.last_name = "demo#{t + 1}"
  u.save!
end
