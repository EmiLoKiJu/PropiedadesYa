require 'faker'

userss = [
  { email: 'user1@example.com', password: 'password1', first_name: 'User', last_name: 'One' },
  { email: 'user2@example.com', password: 'password2', first_name: 'User', last_name: 'Two' },
  { email: 'user3@example.com', password: 'password3', first_name: 'User', last_name: 'Three' }
]
User.create!(userss)
users = User.all
# Create Properties for each User
users.each do |user|
  10.times do |i|
    title = Faker::Lorem.sentence(word_count: 3)
    description = Faker::Lorem.sentence(word_count: 100)
    pictures = []
    rand(1..8).times do |j|
      randnumber = rand(1..10)
      picture_path = Rails.root.join("app/assets/images/sample_image#{randnumber}.jpg")
      pictures << { io: File.open(picture_path), filename: "sample_image#{randnumber}.jpg", content_type: 'image/jpg' }
    end

    property = Property.create!(
      title: title,
      rent: [true, false].sample,
      price: rand(100..1000000),
      dollars: [true, false].sample,
      commune: Commune.all.sample,
      address: "Address #{i + 1}",
      area: rand(50..200),
      rooms: rand(1..5),
      bathrooms: rand(1..3),
      description: description,
      user: user,
      pictures: pictures
    )
  end
end