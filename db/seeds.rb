# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.find_or_create_by!(email: 'sample@email.com') do |user|
    user.name = 'sampleUser1'
    user.password = 'p'
end

(1..25).each do |i|
  Plan.create!(
    label: "sometihg to do #{i}",
    detail: 'foo',
    start_time: Date.today,
    user_id: 1
  )
end

