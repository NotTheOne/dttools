# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :insight_relationship do
    source_id 1
    target_id 1
    value 1
  end
end
