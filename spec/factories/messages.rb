FactoryBot.define do
  
  factory :message do
    text         {"Doutol"}
    image        { Rack::Test::UploadedFile.new("./spec/fixtures/kitchen.jpg", "image/jpeg") }
  end

end
