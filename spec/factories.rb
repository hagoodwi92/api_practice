FactoryBot.define do
  factory(:name) do
    petName {Faker::Creature::Horse.name}
    petType {Faker::Creature::Animal.name}
    petColor {Faker::Color.color_name}
  end
end