FactoryBot.define do
  factory :car do
    sequence(:model_name) { |n| "Model #{n}" }
    price { rand(20_000..100_000) }
    association :brand
  end
end