FactoryBot.define do
  factory :book do
    title { Faker::Lorem.characters(number:5) }
    body { Faker::Lorem.characters(number:20) }
  end
end

class Book < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true
end

