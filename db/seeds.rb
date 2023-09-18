# frozen_string_literal: true

10.times do
  Author.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    yob: Faker::Number.between(from: 1900, to: 2000),
    is_alive: Faker::Boolean.boolean
  )
end
