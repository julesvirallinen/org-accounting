FactoryGirl.define do
  factory :user do
    email "test@test.com"
    password "password"
    password_confirmation "password"
    approved true
  end


  factory :expense do
    description "title"
    receipt_url "//asphallinto-assets.s3.amazonaws.com/uploads/1e59604b-747b-49b1-ba44-219f48649833/test.png"
    user_id 1
  end
end