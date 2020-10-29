class Name < ApplicationRecord
  validates :petName, presence: true
  validates :petType, presence: true
  validates :petColor, presence: true
end
