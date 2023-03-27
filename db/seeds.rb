require 'faker'

# Create 10 random powers
puts "📃 Seeding data..."

10.times do
  Power.create(
    name: Faker::Superhero.power,
    description: Faker::Lorem.sentence
  )
end

# Create 10 random heroes, each with 1-3 random powers
10.times do
  hero = Hero.create(
    name: Faker::Superhero.name,
    super_name: Faker::Superhero.descriptor
  )

  # Add 1-3 random powers to the hero
  rand(1..3).times do
    power = Power.all.sample
    HeroPower.create(hero: hero, power: power)
  end
end

puts "✅ Done seeding"
