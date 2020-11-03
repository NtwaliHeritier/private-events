FactoryBot.define do
  factory :event do
    name { 'Event 1' }
    description { 'Sample body of description' }
    start_date { '2020, 11, 11' }
  end
end
