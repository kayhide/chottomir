FactoryBot.define do
  factory :incident do
    user
    category { Category.first }
    sequence(:note) { |i| "Note #{i}" }
  end
end
