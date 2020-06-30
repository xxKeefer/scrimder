# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
200.times do
  fake_username = Faker::Ancient.god.capitalize + Faker::Hacker.noun.capitalize
  fake_bnet = fake_username + '#' + rand(1000..15_000).to_s
  Profile.create(
    username: fake_username,
    bnet: fake_bnet,
    pref_role: %w[tank damage support].sample.capitalize,
    other_role: %w[tank damage support].sample.capitalize,
    tank: rand(500..4500),
    damage: rand(500..4500),
    support: rand(500..4500),
    user_id: nil
  )
  puts Profile.last.username
end
