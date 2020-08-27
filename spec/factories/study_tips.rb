FactoryBot.define do
  
  factory :study_tip do
    title        {"Doutol"}
    detail       {"aaaaaaaaaaaaaa"}
    image        { Rack::Test::UploadedFile.new("./spec/fixtures/kitchen.jpg", "image/jpeg") }
  end

end
