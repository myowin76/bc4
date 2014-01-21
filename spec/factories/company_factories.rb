FactoryGirl.define do
  factory :company do
    user                
    asset               nil
    name                { Faker::Lorem.sentence[0,64] }
    category            { %w(call email follow_up lunch meeting money presentation trip).sample }
    due_at              { FactoryGirl.generate(:time) }
    background_info     { Faker::Lorem.paragraph[0,255] }
    completed_at        nil
    deleted_at          nil
    updated_at          { FactoryGirl.generate(:time) }
    created_at          { FactoryGirl.generate(:time) }
  end

  factory :completed_task, :parent => :task do
    completed_at { Date.yesterday }
  end
end
