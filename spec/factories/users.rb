FactoryBot.define do
  factory :user do
    sequence(:username) { |i| "User #{i}" }
    sequence(:email) { |i| "user-#{i}@chottomir.test" }
  end
end
