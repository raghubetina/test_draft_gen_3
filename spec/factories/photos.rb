# Copy this file into your spec/support folder; create one if you don't have it.
# https://github.com/firstdraft/increasing_random/blob/master/increasing_random.rb


FactoryBot.define do
  factory :photo do
    sequence(:image) { |n| "Some fake image #{n}" }
    sequence(:caption) { |n| "Some fake caption #{n}" }
  end
end
