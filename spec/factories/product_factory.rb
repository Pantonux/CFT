FactoryBot.define do
    sequence(:name) { |n| "product#{n}" }

    factory :product do
        name
        description "desc"
        price 50000
        image_url "placeholder.jpg"
    end
end
