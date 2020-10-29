# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

class Seed

  def self.begin
    seed = Seed.new
    seed.generate_names
  end

  def generate_names
    20.times do |i|
      name = Name.create!(
        petName: Faker::Creature::Horse.name,
        petType: Faker::Creature::Animal.name,
        petColor: Faker::Color.color_name
      )
      puts "Name #{i}: petName is '#{name.petName}' and petType is '#{name.petType}' and color is '#{name.petColor}'."
    end
  end
end

Seed.begin