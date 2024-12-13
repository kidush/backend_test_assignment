FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "user#{n}@example.com" }
    preferred_price_range { (35_000..40_000) }

    trait :with_preferred_brands do
      after(:create) do |user|
        brands = create_list(:brand, 2)
        brands.each do |brand|
          create(:user_preferred_brand, user: user, brand: brand)
        end
      end
    end
  end
end